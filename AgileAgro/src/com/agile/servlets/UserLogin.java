package com.agile.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.agile.DAO.UserLoginDAO;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet(description = "login servlet", urlPatterns = { "/UserLogin" })
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		InitialContext ctx;
		DataSource ds;
		int db_response = 0;
		
		UserLoginDAO new_login_requrest = null;
		
		try {
			ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/DefaultDB");
			new_login_requrest = new UserLoginDAO(ds);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		String username = request.getParameter("agrouser");
		String passcode = request.getParameter("agropass");
		
		try {
			db_response = new_login_requrest.checkUser(username, passcode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		if(db_response == 1)
		{
			response.getWriter().println("<script>alert('Success!'); window.location = 'login.jsp';</script>");
		}
		else
		{
			response.sendRedirect("login_fail.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
