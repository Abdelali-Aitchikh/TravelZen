package com.iset.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;

/**
 * Servlet implementation class DeleteEditHotelServlet
 */
@WebServlet("/DeleteHotelServlet")
public class DeleteHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao hotel_methode;
	public void init() {
		hotel_methode = new DaoImp();
	}
    public DeleteHotelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String action = request.getContextPath();
		switch (action) {
		case "/delete":*/
			try {
				deleteHotel(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			} 
				/*break;
		/*case "/edit":
				showEditForm(request, response);
				break;
		/*case "/update":
				updateUser(request, response);
				break;*/
		/*default:
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/gestionHotels.jsp");
			dispatcher.forward(request, response);
				break;
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void deleteHotel(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		String email = request.getParameter("email");
		hotel_methode.delete_Hotel_User(email);
		hotel_methode.deleteHotel(email);
		response.sendRedirect("GestionHotelServlet");
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("GestionHotelServlet");
		dispatcher.forward(request, response);*/

	}
}
