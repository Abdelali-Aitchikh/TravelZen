package com.iset.servlets;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.iset.dao.Dao;
import com.iset.dao.DaoImp;

import com.iset.entities.Utilisateur_Hotel;

/**
 * Servlet implementation class AjouterPartenaireServlet
 */
@WebServlet("/AjouterPartenaireServlet")
public class AjouterPartenaireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao hotel_methode;
	public void init() {
		hotel_methode = new DaoImp();
	}

    public AjouterPartenaireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/ajouterPartenaire.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email_hotel = request.getParameter("email_hotel");
    	String email_Partenaire = request.getParameter("email_partenaire");

        Utilisateur_Hotel user_hotel = new Utilisateur_Hotel();
        user_hotel.setHotel_EMAIL_HOTEL(email_hotel);
        user_hotel.setUtilisateur_EMAIL(email_Partenaire);
        try {
        	hotel_methode.saveUser_Hotel(user_hotel);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/views/ajouterPartenaire.jsp").forward(request, response);
	}

}
