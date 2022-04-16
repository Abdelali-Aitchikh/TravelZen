package com.iset.servlets;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;


import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Email;
/*import com.iset.entities.Email;*/
import com.iset.entities.Utilisateur;



@WebServlet({ "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao registerDao;

	public RegisterServlet() {
		super();
	}

	@Override
	public void init() throws ServletException {
		registerDao = new DaoImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nom = request.getParameter("nom");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String password = request.getParameter("password");
		String repertPassword = request.getParameter("repertPassword");

		Utilisateur user = new Utilisateur();

		String makeHash;
		Random random = new Random();
		random.nextInt(999999);
		makeHash = DigestUtils.md5Hex("" + random);

		user.setNom(nom);
		user.setEmail(email);
		user.setTelephone(telephone);
		user.setPassword(password);
		user.setEtatEmail(0);
		user.setHash(makeHash);

		Email sm = new Email();

		if (registerDao.getUser(email) != null) {
			request.setAttribute("ErrorEmail", "Email is already used! Try another email.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
		} else {
			if (!password.equals(repertPassword)) {
				request.setAttribute("ErrorPassword", "These passwords do not match. Try Again.");
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
			} else {
				if (sm.sendVerifieEmail(email, makeHash)) {
					registerDao.ajouterUser(user);
					this.getServletContext().getRequestDispatcher("/WEB-INF/views/thankYou.jsp").forward(request, response);
				}
				else
					this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
			}
		}

	}

}
