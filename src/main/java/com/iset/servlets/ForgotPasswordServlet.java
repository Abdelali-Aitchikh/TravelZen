package com.iset.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;
import com.iset.entities.Email;
import com.iset.entities.Utilisateur;



@WebServlet("/ForgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Dao forgotDao;
	private static String code = Email.getRandom();
	private static String userEmail;
       
    public ForgotPasswordServlet() {
        super();
    }
    
    @Override
	public void init() throws ServletException {
		forgotDao = new DaoImp();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/giveEmail.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("entreEmailBtn") != null) {
			String email = request.getParameter("email");
			
			Utilisateur user = new Utilisateur();
			user.setEmail(email);
			userEmail = email;
			
			Email sm = new Email();
			//String  code = sm.getRandom();
					
			if(forgotDao.getUser(email) != null) {
				sm.sendEmail(email, code);
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/forgotPassword.jsp").forward(request, response);
			}
			else {
				request.setAttribute("ErrorEmail", "Email is not available");
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/giveEmail.jsp").forward(request, response);
			}
		}
		
		if(request.getParameter("changePasswordBtn") != null) {
			String codeJsp = request.getParameter("code");
			String password = request.getParameter("password");
			String repertPassword = request.getParameter("repertPassword");
			if(code.equals(codeJsp)) {
				if (!password.equals(repertPassword)) {
					request.setAttribute("ErrorPassword", "These passwords do not match. Try Again.");
					this.getServletContext().getRequestDispatcher("/WEB-INF/views/forgotPassword.jsp").forward(request, response);
				}
				else {
					forgotDao.updatPassword(userEmail, password);
					this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
				}
			}
			else {
				request.setAttribute("ErrorPassword", "incorrect Code.");
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/giveEmail.jsp").forward(request, response);
			}
		}
		
	}

}
