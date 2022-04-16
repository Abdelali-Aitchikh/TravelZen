package com.iset.servlets;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Hotel;
import com.iset.entities.Utilisateur_Hotel;

/**
 * Servlet implementation class ModifierHotelServlet
 */
@WebServlet("/ModifierHotelServlet")
@MultipartConfig(maxFileSize = 1677216)
public class ModifierHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao hotel_methode;
	public void init() {
		hotel_methode = new DaoImp();
	}
    public ModifierHotelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/modifierHotel.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom_hotel = request.getParameter("nom_hotel");
		System.out.print(nom_hotel);
    	String ville_hotel = request.getParameter("ville_hotel");
    	String email_hotel = request.getParameter("email_hotel");
    	String telephone_hotel = request.getParameter("telephone_hotel");
    	String plage_proximite_hotel = request.getParameter("plage_proximite_hotel");
    	String plage_distance_hotel = request.getParameter("distance_hotel");
    	String chambre_double_hotel = request.getParameter("chambre_double_hotel");
    	String chambre_solo_hotel = request.getParameter("chambre_solo_hotel");
    	String etoile_hotel = request.getParameter("etoile");
    	String annulation_hotel = request.getParameter("annulation");
    	String prix_bas_hotel = request.getParameter("prix_bas_hotel");
    	String prix_eleve_hotel = request.getParameter("prix_eleve_hotel");
    	String parking_prive = request.getParameter("parking_prive_hotel");
    	String service_etage = request.getParameter("service_etage_hotel");
    	String chambre_non_fumeurs = request.getParameter("chambre_non_fumeurs_hotel");
    	String animeaux_admis = request.getParameter("animeaux_admis_hotel");
    	String connexion_gratuit = request.getParameter("connexion_hotel");
        /***************************************************************/
    	Part filePart = request.getPart("imageUpdate");
    	InputStream is = filePart.getInputStream();    	
    
    	byte[] bFile = is.readAllBytes();

	
        Hotel hotel = new Hotel();
        hotel.setNom_hotel(nom_hotel);
        hotel.setVille_hotel(ville_hotel);
        hotel.setEmail_hotel(email_hotel);
        hotel.setTelephone_hotel(telephone_hotel);
        hotel.setPlage_proximite_hotel(plage_proximite_hotel);
        hotel.setPlage_distance_hotel(plage_distance_hotel);
        hotel.setChambre_double_hotel(chambre_double_hotel);
        hotel.setChambre_solo_hotel(chambre_solo_hotel);
        hotel.setEtoile_hotel(etoile_hotel);
        hotel.setAnnulation_hotel(annulation_hotel);
        hotel.setPrix_bas_hotel(prix_bas_hotel);
        hotel.setPrix_eleve_hotel(prix_eleve_hotel);
        hotel.setParking_prive(parking_prive);
        hotel.setService_etage(service_etage);
        hotel.setChambre_non_fumeurs(chambre_non_fumeurs);
        hotel.setAnimeaux_admis(animeaux_admis);
        hotel.setConnexion_gratuit(connexion_gratuit);
        hotel.setImage_hotel(bFile);

        try {
        	hotel_methode.updateHotel(hotel);
        	
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        /*response.sendRedirect("list");*/
        RequestDispatcher dispatcher = request.getRequestDispatcher("GestionHotelServlet");
		dispatcher.forward(request, response);
	}

}
