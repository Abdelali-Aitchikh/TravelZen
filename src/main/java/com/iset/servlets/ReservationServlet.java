package com.iset.servlets;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Hotel;
import com.iset.entities.Reservation;
import com.iset.entities.Utilisateur_Hotel;

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao hotel_methode;
	public void init() {
		hotel_methode = new DaoImp();
	}
    public ReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/reservation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom_client = request.getParameter("nom_client");
    	String ville_client = request.getParameter("ville_client");
    	String email_client = request.getParameter("email_client");
    	String telephone_client = request.getParameter("telephone_client");
    	String cin_client = request.getParameter("cin_client");
    	String nombre_personne = request.getParameter("nombre_personne");
    	String nombre_chambre_double = request.getParameter("nombre_chambre_double");
    	String nombre_chambre_solo = request.getParameter("nombre_chambre_solo");
    	String Date_reservation = request.getParameter("Date_reservation");
    	String Nombre_jours = request.getParameter("Nombre_jours");
    	String email = request.getParameter("email");
    	System.out.println(email);

    	

        /***************************************************************/


    	Reservation reservation = new Reservation();
    	reservation.setNomComplet(nom_client);
    	reservation.setVille(ville_client);
    	reservation.setEmail(email_client);
    	reservation.setTelephone(telephone_client);
    	reservation.setCin(cin_client);
    	reservation.setNombrePersonne(nombre_personne);
    	reservation.setNombreChambreDouble(nombre_chambre_double);
    	reservation.setNombreChambreSolo(nombre_chambre_solo);
    	reservation.setNombreJours(Nombre_jours);
    	reservation.setDateReservation(Date_reservation);
    	
    	Hotel hotel = new Hotel();
    	hotel = hotel_methode.selectHotelByID("contact@gmail.com");
    	reservation.setHotel(hotel);
        try {
        	/**/
        	hotel_methode.saveReservation(reservation);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        response.sendRedirect("hotelList");
        /*
        RequestDispatcher dispatcher = request.getRequestDispatcher("hotelList");
		dispatcher.forward(request, response);*/
	}

}
