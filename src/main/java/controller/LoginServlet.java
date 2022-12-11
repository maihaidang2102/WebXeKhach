package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import DAO.CustomerDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import utils.MyUtils;
import utils.Router;

@WebServlet("/login" )
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public LoginServlet() {
		// TODO Auto-generated constructor stub
		super();
	}

	// Hiển thị trang Login.
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

	// Khi người nhập userName & password, và nhấn Submit.
	// Phương thức này sẽ được thực thi.
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		HttpSession session = request.getSession();
		String numberPhone = request.getParameter("numberPhone");
		String password = request.getParameter("password");

		Customer user = null;
		boolean hasError = false;
		String errorString = null;
		
		session.setAttribute("phone", numberPhone);
		if (numberPhone == null || password == null || numberPhone.length() == 0 || password.length() == 0) {
			hasError = true;
			errorString = "Required number phone and password!";
		} else {
			
			try {
				// Tìm user trong DB.
				user = CustomerDAO.findUser(conn, numberPhone, password);
				
				if (user == null) {
					hasError = true;
					errorString = "Number phone or password invalid";
				}
			} catch (SQLException e) {
				e.printStackTrace();
				hasError = true;
				errorString = e.getMessage();
			}
		}
		// Trong trường hợp có lỗi,
		if (hasError) {
			user = new Customer();
			user.setPhone_number(numberPhone);
			user.setPassword(password);

			// Lưu các thông tin vào request attribute trước khi forward.
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);
			
			RequestDispatcher dispatcher //
					= this.getServletContext().getRequestDispatcher(Router.LOGIN_NOTIFY);
			
			dispatcher.forward(request, response);
		}
		// Trường hợp không có lỗi.
		// chuyển hướng sang trang userInfo.
		else {
			MyUtils.storeLoginedUser(session, user);
			
			// Redirect (Chuyển hướng) sang trang /userInfo.
			response.sendRedirect(request.getContextPath() + "/userInfo");
		}
	}
}
