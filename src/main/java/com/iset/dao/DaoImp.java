package com.iset.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.http.Part;

import org.apache.commons.codec.digest.DigestUtils;
import org.eclipse.persistence.jpa.jpql.JPQLQueryDeclaration.Type;

import com.iset.entities.Hotel;
import com.iset.entities.Reservation;
import com.iset.entities.Utilisateur;
import com.iset.entities.Utilisateur_Hotel;
import com.iset.util.JPAutil;

public class DaoImp implements Dao {
	@PersistenceContext
	private EntityManager entityManager = JPAutil.getEntityManager("tvzen");
	//Constructeur
	public DaoImp() {
		// TODO Auto-generated constructor stub
	}
	/******************************INSERTION HOTEL*************************************/
	//Inserer les information d'hotel dans la table Hotel
	@Override
	public Optional<Hotel> saveHotel(Hotel hotel) {
		try {
			EntityTransaction tx = entityManager.getTransaction();
    		tx.begin();
            entityManager.persist(hotel);
            tx.commit();
            return Optional.of(hotel);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }
	@Override
	public Optional<Reservation> saveReservation(Reservation reservation) {
		try {
			EntityTransaction tx = entityManager.getTransaction();
    		tx.begin();
            entityManager.persist(reservation);
            tx.commit();
            return Optional.of(reservation);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }
	//Inserer les email des hotels et des utilisateur dans la table association Utilisateur_Hotel
	@Override
	public Optional<Utilisateur_Hotel> saveUser_Hotel(Utilisateur_Hotel user_hotel) {
        try {
        	EntityTransaction tx = entityManager.getTransaction();
    		tx.begin();
            entityManager.persist(user_hotel);
            tx.commit();
            return Optional.of(user_hotel);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }
	/******************************SELECTION HOTEL*************************************/
	//Afficher Les Liste des hotels d'un utilisateur
	@Override
	public  List<Hotel> selectAllHotels(String email_user) {
		TypedQuery<Hotel> query = entityManager.createQuery("SELECT e FROM Hotel e, Utilisateur_Hotel u WHERE e.email_hotel = u.hotel_EMAIL_HOTEL AND u.utilisateur_EMAIL = :email_user", Hotel.class)
				.setParameter("email_user", email_user);
	    List<Hotel> resultList = query.getResultList();
		return resultList;
	}
	@Override
	public  Hotel selectHotelByID(String email_hotel) {
		Query query = entityManager.createQuery("SELECT e FROM Hotel e WHERE e.email_hotel = :email_hotel", Hotel.class)
				.setParameter("email_hotel", email_hotel);
		Hotel  result = (Hotel)query.getSingleResult();
		return result;
	}
	@Override
	public  List<Reservation> selectAllReservation(String email_user) {
		TypedQuery<Reservation> query = entityManager.createQuery("SELECT r FROM Reservation r ", Reservation.class);
				
		/*TypedQuery<Reservation> query = entityManager.createQuery("SELECT r FROM Reservation r , Hotel h , Utilisateur_Hotel u WHERE r.email = h.email_hotel AND h.email_hotel = u.hotel_EMAIL_HOTEL AND u.utilisateur_EMAIL = :email_user ", Reservation.class)
				.setParameter("email_user", email_user);*/
		/*SELECT * FROM t_reservation,t_hotel,t_utilisateur_t_hotel WHERE t_reservation.EMAIL = t_hotel.EMAIL_HOTEL AND t_hotel.EMAIL_HOTEL = t_utilisateur_t_hotel.HOTEL_EMAIL_HOTEL AND t_utilisateur_t_hotel.UTILISATEUR_EMAIL = 'mehbakk7@gmail.com'; */
	    List<Reservation> resultList = query.getResultList();
		return resultList;
	}
	@Override
	public int countHotel() {
		Query query = entityManager.createQuery("SELECT COUNT(e) FROM Hotel e", Hotel.class);
		int count = ((Number) query.getSingleResult()).intValue();
		return count ;
	}
	/******************************MODIFICATION HOTEL*************************************/
	@Override
	public Hotel updateHotel(Hotel hotel) {
		EntityTransaction tx = entityManager.getTransaction();
		tx.begin();
		entityManager.merge(hotel);
		tx.commit();
		return hotel;
	}
	/******************************SUPPRESSION HOTEL*************************************/	
	@Override
	public void deleteHotel(String email) {
		EntityTransaction tx = entityManager.getTransaction();
		tx.begin();
		entityManager.createQuery("delete from Hotel c where c.email_hotel = :email")
		.setParameter("email", email).executeUpdate();
		tx.commit();
	}
	
	@Override
	public void delete_Hotel_User(String email) {
		EntityTransaction tx = entityManager.getTransaction();
		tx.begin();
		entityManager.createQuery("delete from Utilisateur_Hotel u where u.hotel_EMAIL_HOTEL = :email")
		.setParameter("email", email).executeUpdate();
		tx.commit();
	}
/**************************************************************************************************************/
	/*************************************************Obtainer l'utilisateur Par Email********************************************************/
	@Override
	public Utilisateur getUser(String email) {
		try {
			TypedQuery<Utilisateur> query = entityManager
					.createQuery("SELECT e FROM Utilisateur e WHERE e.email = :email", Utilisateur.class)
					.setParameter("email", email);

			Utilisateur resultList = query.getSingleResult();
			return resultList;
		} catch (NoResultException e) {
			return null;
		}
	}
/****************************************************************************************************************************************/
	
/***********************************************Obtainer l'utilisateur Par Password******************************************************/
	@Override
	public Utilisateur getUserByPassword(String password) {
		try {
			TypedQuery<Utilisateur> query = entityManager
					.createQuery("SELECT e FROM Utilisateur e WHERE e.password = :password", Utilisateur.class)
					.setParameter("password", password);

			Utilisateur resultList = query.getSingleResult();
			return resultList;
		} catch (NoResultException e) {
			return null;
		}
	}
	
/****************************************************************************************************************************************/
	
	
/***************************************************Ajoute Utilisateur*******************************************************************/
	@Override
	public void ajouterUser(Utilisateur user) {
		Date currentDate = new Date(new Date().getYear(), new Date().getMonth(), new Date().getDate());
		EntityTransaction tx = entityManager.getTransaction();
		tx.begin();
		entityManager.createNativeQuery(
				"INSERT INTO t_utilisateur (nom, email, password, telephone, dateInscription, etatEmail, adresseIP, hash) VALUES (?, ?, ?, ?, ?, ?, ?, ?) ")
				.setParameter(1, user.getNom()).setParameter(2, user.getEmail()).setParameter(3, user.getPassword())
				.setParameter(4, user.getTelephone()).setParameter(5, currentDate).setParameter(6, 0)
				.setParameter(7, null).setParameter(8, user.getHash()).executeUpdate();
		tx.commit();
	}
/****************************************************************************************************************************************/

	
/**************************************************Modifie Etat Email*********************************************************************/	
	@Override
	public boolean updatEtatEmail(String email, String hash) {
		
		boolean test = false;
		String makeHash;
		Random random = new Random();
		random.nextInt(999999);
		makeHash = DigestUtils.md5Hex("" + random);
		
		try {
			EntityTransaction tx = entityManager.getTransaction();
			tx.begin();
			Query updat = entityManager.createQuery("UPDATE Utilisateur SET etatEmail = 1, hash = :newHash WHERE email = :email AND hash = :oldHash", Utilisateur.class)
					.setParameter("newHash", makeHash)
					.setParameter("email", email)
					.setParameter("oldHash", hash);
			
			updat.executeUpdate();
			test = true;
			tx.commit();
		} catch (Exception e) {
			test = false;
			e.printStackTrace();
		}
		return test;
	}
/****************************************************************************************************************************************/
	
	
/**************************************************Modifie Password*********************************************************************/	
	@Override
	public void modifiePassword(String passwordOld, String passwordNew) {
		try {
			EntityTransaction tx = entityManager.getTransaction();
			tx.begin();
			Query update = entityManager.createQuery("UPDATE Utilisateur SET password = :password WHERE password = :passord",Utilisateur.class)
					.setParameter("password", passwordNew)
					.setParameter("password", passwordOld);
			update.executeUpdate();
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
/****************************************************************************************************************************************/
	
	
/**************************************************Mot De Passe Oublié*********************************************************************/		
	@Override
	public void updatPassword(String email, String password) {
		
		try {
			EntityTransaction tx = entityManager.getTransaction();
			tx.begin();
			Query update = entityManager.createQuery("UPDATE Utilisateur SET password = :password WHERE email = :email", Utilisateur.class )
					.setParameter("password", password)
					.setParameter("email", email);
			update.executeUpdate();
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
/********************************************************************************************************************************************/


	
/************************************************Obtainer l'utilisateur Par La Ville**************************************************************/		
	@Override 
	public List<Hotel> getHotelVille(String ville){
		TypedQuery<Hotel> query = entityManager.createQuery("SELECT e FROM Hotel e WHERE e.ville_hotel = :ville_hotel",Hotel.class)
				.setParameter("ville_hotel", ville);
		List<Hotel> resultList = query.getResultList();
		return resultList;		
	}
/**************************************************************************************************************************************************/

/***********************************************Obtainer l'utilisateur Par Le Nom Hotel************************************************************/			
	@Override
	public List<Hotel> getHotelByName(String name){
		TypedQuery<Hotel> query = entityManager.createQuery("SELECT e FROM Hotel e WHERE e.nom_hotel = :nom_hotel",Hotel.class)
				.setParameter("nom_hotel", name);
		List<Hotel> resultList = query.getResultList();
		return resultList;
	}
/**************************************************************************************************************************************************/

	
/********************************************Obtainer l'utilisateur Par Le Nom Hotel Et La Ville****************************************************/				
	@Override
	public List<Hotel> getHotel(String name, String Ville){
		TypedQuery<Hotel> query = entityManager.createQuery("SELECT e FROM Hotel e WHERE e.nom_hotel = :nom_hotel and e.ville_hotel = :ville_hotel", Hotel.class)
				.setParameter("nom_hotel", name)
				.setParameter("ville_hotel", Ville);
		List<Hotel> resultList = query.getResultList();
		return resultList;
	}
/**************************************************************************************************************************************************/
	@Override
	public List<Hotel> selectAllHotels() {
		TypedQuery<Hotel> query = entityManager.createQuery("SELECT e FROM Hotel e", Hotel.class);
		List<Hotel> resultList = query.getResultList();
		return resultList;
	}

	 


}
