package com.iset.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Hotel;

/**
 * Servlet implementation class EditHotelServlet
 */
@WebServlet("/EditHotelServlet")
public class EditHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao hotel_methode;
	public void init() {
		hotel_methode = new DaoImp();
	}
    public EditHotelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		Hotel existingHotel = hotel_methode.selectHotelByID(email);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/modifierHotel.jsp");
		request.setAttribute("hotel", existingHotel);
		dispatcher.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {

	}
}
