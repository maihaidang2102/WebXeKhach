package controller.ADMIN;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddManagementGarageServlet
 */
@WebServlet(urlPatterns = { "/addManagementGarage" })
public class AddManagementGarageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddManagementGarageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		Connection conn = MyUtils.getStoredConnection(request);
//		String id = request.getParameter("id");
//		int garage_id = Integer.parseInt(id);
//		System.out.println("9999999999999999999");
//		System.out.println(garage_id);
//		String fullname = new String(request.getParameter("fullname").getBytes("ISO-8859-1"), "UTF-8");
//		String phone_number = new String(request.getParameter("phone_number").getBytes("ISO-8859-1"), "UTF-8");
//		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");
//		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
//		ManagerDAO managerDAO = new ManagerDAO();
//		String errorString = null;
//
//		try {
//			managerDAO.insertManager(conn, fullname, phone_number, email, password, garage_id);
//		} catch (SQLException e) {
//			e.printStackTrace();
//			errorString = e.getMessage();
//		}
//
//		request.setAttribute("errorString", errorString);
//
//		if (errorString != null) {
//			RequestDispatcher dispatcher = request.getServletContext()
//					.getRequestDispatcher(Router.ADMIN_GARAGEMANAGEMENT);
//			dispatcher.forward(request, response);
//		}
//
//		else {
//			response.sendRedirect(request.getContextPath() + "/garageacctive");
//		}
	}

}
