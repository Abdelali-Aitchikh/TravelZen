package com.iset.entities;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity @Table(name="T_Utilisateur")
public class Utilisateur implements Serializable {
	private static final long serialVersionUID= 1L;
	
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private int id;
	private String nom;
	@Id
	private String email;
	private String password;
	private String telephone;
	private Date dateInscription;
	private int etatEmail;
	private int adresseIP;
	private String hash;
	
	@ManyToMany (fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
	   @JoinTable( name = "t_utilisateur_t_hotel" )
	private Set<Hotel> hotel = new HashSet<>();

	
	public Utilisateur() {
		// TODO Auto-generated constructor stub
	}
	
	public Utilisateur(int id, String nom, String email, String password, String telephone, Date dateInscription,
			int etatEmail, int adresseIP, String hash) {
		super();
		this.id = id;
		this.nom = nom;
		this.email = email;
		this.password = password;
		this.telephone = telephone;
		this.dateInscription = dateInscription;
		this.etatEmail = etatEmail;
		this.adresseIP = adresseIP;
		this.hash = hash;
	}

	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String passeword) {
		this.password = passeword;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Date getDateInscription() {
		return dateInscription;
	}
	public void setDateInscription(Date dateInscription) {
		this.dateInscription = dateInscription;
	}
	public int getEtatEmail() {
		return etatEmail;
	}
	public void setEtatEmail(int etatEmail) {
		this.etatEmail = etatEmail;
	}
	public int getAdresseIP() {
		return adresseIP;
	}
	public void setAdresseIP(int adresseIP) {
		this.adresseIP = adresseIP;
	}

	public Set<Hotel> getHotel() {
		return hotel;
	}

	public void setHotel(Set<Hotel> hotel) {
		this.hotel = hotel;
	}

}
