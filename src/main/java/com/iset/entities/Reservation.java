package com.iset.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity 
@Table(name="T_Reservation")
public class Reservation implements Serializable  {
	private static final long serialVersionUID= 1L;
	public Reservation() {
		// TODO Auto-generated constructor stub
	}
	@Id 
	@GeneratedValue (strategy=GenerationType.AUTO)
	int id;
	String nomComplet;
	String ville;
	String email;
	String telephone;
	String cin;
	String nombrePersonne;
	String nombreChambreDouble;
	String nombreChambreSolo;
	String dateReservation;
	String nombreJours;
	
	@ManyToOne
    private Hotel hotel ;
	
	public String getNomComplet() {
		return nomComplet;
	}
	public void setNomComplet(String nomComplet) {
		this.nomComplet = nomComplet;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getNombrePersonne() {
		return nombrePersonne;
	}
	public void setNombrePersonne(String nombrePersonne) {
		this.nombrePersonne = nombrePersonne;
	}
	public String getNombreChambreDouble() {
		return nombreChambreDouble;
	}
	public void setNombreChambreDouble(String nombreChambreDouble) {
		this.nombreChambreDouble = nombreChambreDouble;
	}
	public String getNombreChambreSolo() {
		return nombreChambreSolo;
	}
	public void setNombreChambreSolo(String nombreChambreSolo) {
		this.nombreChambreSolo = nombreChambreSolo;
	}
	public String getDateReservation() {
		return dateReservation;
	}
	public void setDateReservation(String dateReservation) {
		this.dateReservation = dateReservation;
	}
	public String getNombreJours() {
		return nombreJours;
	}
	public void setNombreJours(String nombreJours) {
		this.nombreJours = nombreJours;
	}

	public Reservation(int id, String nomComplet, String ville, String email, String telephone, String cin,
			String nombrePersonne, String nombreChambreDouble, String nombreChambreSolo, String dateReservation,
			String nombreJours, Hotel hotel) {
		super();
		this.id = id;
		this.nomComplet = nomComplet;
		this.ville = ville;
		this.email = email;
		this.telephone = telephone;
		this.cin = cin;
		this.nombrePersonne = nombrePersonne;
		this.nombreChambreDouble = nombreChambreDouble;
		this.nombreChambreSolo = nombreChambreSolo;
		this.dateReservation = dateReservation;
		this.nombreJours = nombreJours;
		this.hotel = hotel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public Reservation(String nomComplet, String ville, String email, String telephone, String cin,
			String nombrePersonne, String nombreChambreDouble, String nombreChambreSolo, String dateReservation,
			String nombreJours) {
		super();
		this.nomComplet = nomComplet;
		this.ville = ville;
		this.email = email;
		this.telephone = telephone;
		this.cin = cin;
		this.nombrePersonne = nombrePersonne;
		this.nombreChambreDouble = nombreChambreDouble;
		this.nombreChambreSolo = nombreChambreSolo;
		this.dateReservation = dateReservation;
		this.nombreJours = nombreJours;
	}
	

}
