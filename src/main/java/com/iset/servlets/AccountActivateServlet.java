package com.iset.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iset.dao.Dao;
import com.iset.dao.DaoImp;



@WebServlet("/AccountActivate")
public class AccountActivateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Dao accountDao;
    
    public AccountActivateServlet() {
        super();
        
    }
    
    @Override
	public void init() throws ServletException {
    	accountDao = new DaoImp();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("key1");
		String hash = request.getParameter("key2");
		
		System.out.println(email + " --- "+ hash);
		System.out.println("hellooooo");
		
		if(accountDao.updatEtatEmail(email, hash)){
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}
		else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
