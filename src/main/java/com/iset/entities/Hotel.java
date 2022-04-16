package com.iset.entities;

import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.servlet.http.Part;

import com.mysql.jdbc.Blob;

@Entity @Table(name="T_Hotel")
public class Hotel implements Serializable  {
	private static final long serialVersionUID= 1L;

	@GeneratedValue (strategy=GenerationType.AUTO)
	int id;
	String nom_hotel;
	String ville_hotel;
	@Id
	String email_hotel;
	String telephone_hotel;
	String plage_proximite_hotel;
	String plage_distance_hotel;
	String chambre_double_hotel;
	String chambre_solo_hotel;
	String etoile_hotel;
	String annulation_hotel;
	String prix_bas_hotel;
	String prix_eleve_hotel;
	String parking_prive;
	String service_etage;
	String chambre_non_fumeurs;
	String animeaux_admis;
	String connexion_gratuit;
	@Lob
	byte[] image_hotel;

	

	
	@OneToMany(mappedBy="hotel")
	private List<Reservation> reservation;




	@ManyToMany (mappedBy="hotel" , cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	private Collection<Utilisateur> utilisateur = new ArrayList<>();
	
	/*@ManyToMany (mappedBy="hotel")
	private List<Utilisateur> utilisateur; */
	/*@ManyToMany
	@JoinTable(name = "T_Utilisateur_Hotel_Associations",
	joinColumns = @JoinColumn(name = "idHotel"),
	inverseJoinColumns = @JoinColumn(name = "idUtilisateur") )
	private List<Utilisateur> utilisateur;*/
	
	public Hotel() {
		// TODO Auto-generated constructor stub
	} 
	

	public Hotel(int id, String nom_hotel, String ville_hotel, String email_hotel, String telephone_hotel,
			String plage_proximite_hotel, String plage_distance_hotel, String chambre_double_hotel,
			String chambre_solo_hotel, String etoile_hotel, String annulation_hotel, String prix_bas_hotel,
			String prix_eleve_hotel, String parking_prive, String service_etage, String chambre_non_fumeurs,
			String animeaux_admis, String connexion_gratuit, byte[] image_hotel) {
		this.id = id;
		this.nom_hotel = nom_hotel;
		this.ville_hotel = ville_hotel;
		this.email_hotel = email_hotel;
		this.telephone_hotel = telephone_hotel;
		this.plage_proximite_hotel = plage_proximite_hotel;
		this.plage_distance_hotel = plage_distance_hotel;
		this.chambre_double_hotel = chambre_double_hotel;
		this.chambre_solo_hotel = chambre_solo_hotel;
		this.etoile_hotel = etoile_hotel;
		this.annulation_hotel = annulation_hotel;
		this.prix_bas_hotel = prix_bas_hotel;
		this.prix_eleve_hotel = prix_eleve_hotel;
		this.parking_prive = parking_prive;
		this.service_etage = service_etage;
		this.chambre_non_fumeurs = chambre_non_fumeurs;
		this.animeaux_admis = animeaux_admis;
		this.connexion_gratuit = connexion_gratuit;
		this.image_hotel = image_hotel;
	}





	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom_hotel() {
		return nom_hotel;
	}

	public void setNom_hotel(String nom_hotel) {
		this.nom_hotel = nom_hotel;
	}

	public String getVille_hotel() {
		return ville_hotel;
	}

	public void setVille_hotel(String ville_hotel) {
		this.ville_hotel = ville_hotel;
	}

	public String getEmail_hotel() {
		return email_hotel;
	}

	public void setEmail_hotel(String email_hotel) {
		this.email_hotel = email_hotel;
	}

	public String getTelephone_hotel() {
		return telephone_hotel;
	}

	public void setTelephone_hotel(String telephone_hotel) {
		this.telephone_hotel = telephone_hotel;
	}

	public String getPlage_proximite_hotel() {
		return plage_proximite_hotel;
	}

	public void setPlage_proximite_hotel(String plage_proximite_hotel) {
		this.plage_proximite_hotel = plage_proximite_hotel;
	}

	public String getPlage_distance_hotel() {
		return plage_distance_hotel;
	}

	public void setPlage_distance_hotel(String plage_distance_hotel) {
		this.plage_distance_hotel = plage_distance_hotel;
	}

	public String getChambre_double_hotel() {
		return chambre_double_hotel;
	}

	public void setChambre_double_hotel(String chambre_double_hotel) {
		this.chambre_double_hotel = chambre_double_hotel;
	}

	public String getChambre_solo_hotel() {
		return chambre_solo_hotel;
	}

	public void setChambre_solo_hotel(String chambre_solo_hotel) {
		this.chambre_solo_hotel = chambre_solo_hotel;
	}

	public String getEtoile_hotel() {
		return etoile_hotel;
	}

	public void setEtoile_hotel(String etoile_hotel) {
		this.etoile_hotel = etoile_hotel;
	}

	public String getAnnulation_hotel() {
		return annulation_hotel;
	}

	public void setAnnulation_hotel(String annulation_hotel) {
		this.annulation_hotel = annulation_hotel;
	}

	public String getPrix_bas_hotel() {
		return prix_bas_hotel;
	}

	public void setPrix_bas_hotel(String prix_bas_hotel) {
		this.prix_bas_hotel = prix_bas_hotel;
	}

	public String getPrix_eleve_hotel() {
		return prix_eleve_hotel;
	}

	public void setPrix_eleve_hotel(String prix_eleve_hotel) {
		this.prix_eleve_hotel = prix_eleve_hotel;
	}

	
	public String getParking_prive() {
		return parking_prive;
	}


	public void setParking_prive(String parking_prive) {
		this.parking_prive = parking_prive;
	}


	public String getService_etage() {
		return service_etage;
	}


	public void setService_etage(String service_etage) {
		this.service_etage = service_etage;
	}


	public String getChambre_non_fumeurs() {
		return chambre_non_fumeurs;
	}


	public void setChambre_non_fumeurs(String chambre_non_fumeurs) {
		this.chambre_non_fumeurs = chambre_non_fumeurs;
	}


	public String getAnimeaux_admis() {
		return animeaux_admis;
	}


	public void setAnimeaux_admis(String animeaux_admis) {
		this.animeaux_admis = animeaux_admis;
	}


	public String getConnexion_gratuit() {
		return connexion_gratuit;
	}


	public void setConnexion_gratuit(String connexion_gratuit) {
		this.connexion_gratuit = connexion_gratuit;
	}


	public byte[] getImage_hotel() {
		return image_hotel;
	}

	public void setImage_hotel(byte[] file) {
		this.image_hotel = file;
	}



	public Collection<Utilisateur> getUtilisateur() {
		return utilisateur;
	}



	public void addUtilisateur(Utilisateur user) {
        utilisateur.add(user);
        user.getHotel().add(this);
    }




}
