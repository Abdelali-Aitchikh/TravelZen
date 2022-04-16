package com.iset.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="t_utilisateur_t_hotel")
public class Utilisateur_Hotel {
	@Id
	String utilisateur_EMAIL;
	@Id
	String hotel_EMAIL_HOTEL;
	
	public Utilisateur_Hotel() {
		
	}

	public Utilisateur_Hotel(String utilisateur_EMAIL, String hotel_EMAIL_HOTEL) {
		super();
		this.utilisateur_EMAIL = utilisateur_EMAIL;
		this.hotel_EMAIL_HOTEL = hotel_EMAIL_HOTEL;
	}

	public String getUtilisateur_EMAIL() {
		return utilisateur_EMAIL;
	}

	public void setUtilisateur_EMAIL(String utilisateur_EMAIL) {
		this.utilisateur_EMAIL = utilisateur_EMAIL;
	}

	public String getHotel_EMAIL_HOTEL() {
		return hotel_EMAIL_HOTEL;
	}

	public void setHotel_EMAIL_HOTEL(String hotel_EMAIL_HOTEL) {
		this.hotel_EMAIL_HOTEL = hotel_EMAIL_HOTEL;
	}

}
