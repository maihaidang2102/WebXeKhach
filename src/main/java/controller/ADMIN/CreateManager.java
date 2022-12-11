package controller.ADMIN;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import DAO.GarageDAO;
import DAO.ManagerDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Garage;
import utils.MyUtils;
import utils.Router;

/**
 * Servlet implementation class CreateManager
 */
@WebServlet(urlPatterns = { "/createManager" })
public class CreateManager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateManager() {
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
		Connection conn = MyUtils.getStoredConnection(request);
		GarageDAO garageDAO = new GarageDAO();
		String idGarage = request.getParameter("id");
		int id_Garage = Integer.parseInt(idGarage);
		Garage garage = null;
		String errorString = null;
		try {
			garage = garageDAO.getInfoGarage(conn, idGarage);
			System.out.println("99999999999999999999999999999999999");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			errorString = e.getMessage();
		}
		if (errorString != null && garage == null) {
			response.sendRedirect(request.getServletPath() + "/garageacctive");
		}
		request.setAttribute("errorString", errorString);
		request.setAttribute("garage", garage);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(Router.ADMIN_CREATEMANAGER);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String id = request.getParameter("id");
		int garage_id = Integer.parseInt(id);
		String fullname = new String(request.getParameter("fullname").getBytes("UTF-8"));
		String phone_number = new String(request.getParameter("phone_number").getBytes("ISO-8859-1"), "UTF-8");
		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");
		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
		ManagerDAO managerDAO = new ManagerDAO();
		String errorString = null;

		try {
			managerDAO.insertManager(conn, fullname, phone_number, email, password, garage_id);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		request.setAttribute("errorString", errorString);

		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(Router.ADMIN_GARAGEMANAGEMENT);
		dispatcher.forward(request, response);
//		if (errorString != null) {
//			RequestDispatcher dispatcher = request.getServletContext()
//					.getRequestDispatcher(Router.ADMIN_GARAGEMANAGEMENT);
//			dispatcher.forward(request, response);
//		}
//
//		else {
//			response.sendRedirect(request.getContextPath() + "/managerList");
//		}
	}

}
