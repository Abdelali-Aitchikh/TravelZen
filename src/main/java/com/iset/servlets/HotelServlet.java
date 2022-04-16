package com.iset.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Hotel;



@WebServlet("/hotelList")
public class HotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Dao selectDao;
    
    public HotelServlet() {
        super();
    }
    
    @Override
	public void init() throws ServletException {
    	selectDao = new DaoImp();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("name_hotel") == null && request.getParameter("ville_hotel") == null) {
			List<Hotel> listHotel = selectDao.selectAllHotels();
			request.setAttribute("listHotel", listHotel);
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/hotel.jsp").forward(request, response);
		}
		
		else {
			String name_hotel = request.getParameter("name_hotel");
			String ville_hotel = request.getParameter("ville_hotel");
			if(name_hotel.equals("") && ville_hotel.equals(ville_hotel)) {
				List<Hotel> lstHotel = selectDao.getHotelVille(ville_hotel);
				request.setAttribute("listHotel", lstHotel);
				System.out.println("Hellooooo"+selectDao.selectAllHotels().get(0).getNom_hotel());
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/hotel.jsp").forward(request, response);
				
			}
			else if(name_hotel.equals(name_hotel) && ville_hotel.equals("")) {
				List<Hotel> lstHotel = selectDao.getHotelByName(name_hotel);
				request.setAttribute("listHotel", lstHotel);
				System.out.println("Hellooooo"+selectDao.selectAllHotels().get(0).getNom_hotel());
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/hotel.jsp").forward(request, response);
			}
			else if(name_hotel.equals(name_hotel) && ville_hotel.equals(ville_hotel)){ 
				List<Hotel> lstHotel = selectDao.getHotel(name_hotel, ville_hotel);
				request.setAttribute("listHotel", lstHotel);
				System.out.println("Hellooooo"+selectDao.selectAllHotels().get(0).getNom_hotel());
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/hotel.jsp").forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
	}

}
