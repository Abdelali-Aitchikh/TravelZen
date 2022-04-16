package com.iset.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iset.dao.DaoImp;



@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoImp loginDao;
	
	public LoginServlet() {
		super();
	}
    
    @Override
	public void init() throws ServletException {
    	loginDao = new DaoImp();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		



		if (loginDao.getUser(email) != null ) {
			System.out.println("1");
			if(loginDao.getUser(email).getEtatEmail() == 1) {
				
				if (loginDao.getUser(email).getPassword().equals(password)) {
					
					
					String userName = loginDao.getUser(email).getNom();
					HttpSession session = request.getSession();
					session.setAttribute("userName", userName);
					session.setAttribute("email", email);
					this.getServletContext().getRequestDispatcher("/DashboardAccueilServlet").forward(request, response);
					
					
				} 
				else {
					
					request.setAttribute("errorPassword", "invalid password! Try again.");
					this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
				}
			}
			else {
				
				request.setAttribute("errorEmail", "Please Confirm Your Email.");
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			}
		} else {
			System.out.println("2");
			request.setAttribute("errorEmail", "invalid email! Try again.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}

	}

}





