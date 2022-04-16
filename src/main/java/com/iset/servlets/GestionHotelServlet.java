package com.iset.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Hotel;

/**
 * Servlet implementation class GestionHotelServlet
 */
@WebServlet("/GestionHotelServlet")
public class GestionHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao hotel_methode;

	public void init() {
		hotel_methode = new DaoImp();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionHotelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				listHotel(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			doGet(request, response);
	}
	private void listHotel(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		List<Hotel> listHotel = hotel_methode.selectAllHotels(email);
		
		
		request.setAttribute("listHotel", listHotel);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/gestionHotels.jsp");
		dispatcher.forward(request, response);
	}
}
