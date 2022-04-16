package com.iset.dao;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.Part;

import com.iset.entities.Hotel;
import com.iset.entities.Reservation;
import com.iset.entities.Utilisateur;
import com.iset.entities.Utilisateur_Hotel;

public interface Dao {
	
	public Optional<Hotel> saveHotel(Hotel hotel);
	public Optional<Utilisateur_Hotel> saveUser_Hotel(Utilisateur_Hotel user_hotel);
	public Hotel updateHotel(Hotel hotel);
	public void deleteHotel(String email);
	public void delete_Hotel_User(String email);
	public  List<Hotel> selectAllHotels(String email_user);
	public  Hotel selectHotelByID(String email_hotel);
	public int countHotel() ;
	public List<Hotel> selectAllHotels();
	public Utilisateur getUser(String email);
	public void ajouterUser(Utilisateur user);
	public boolean updatEtatEmail(String email, String hash);
	public void updatPassword(String email, String password);
	public List<Hotel> getHotelVille(String ville);
	public List<Hotel> getHotelByName(String hotel);
	public List<Hotel> getHotel(String hotel, String Ville);
	public Utilisateur getUserByPassword(String password);
	public void modifiePassword(String passwordOld, String passwordNew);
	public Optional<Reservation> saveReservation(Reservation reservation);
	public  List<Reservation> selectAllReservation(String email_user);
}
