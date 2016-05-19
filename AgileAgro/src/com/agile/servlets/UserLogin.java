package com.agile.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
		@SuppressWarnings("unused")
		InitialContext ctx;
		@SuppressWarnings("unused")
		DataSource ds;
		Connection local_oracle_connection = null;
		int db_response = 0;
		int ins_status = 0;
		
		UserLoginDAO new_login_requrest = new UserLoginDAO();
		
		try {
			/*ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/DefaultDB");
			new_login_requrest = new UserLoginDAO(ds);*/ // Use this snippet for HCP
			local_oracle_connection = oracle_connector();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		String username = request.getParameter("agrouser");
		String passcode = request.getParameter("agropass");
		String instance_id = request.getParameter("instance_id");
		
		try {
			db_response = new_login_requrest.checkUser(username, passcode,instance_id,local_oracle_connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		if(db_response == 1)
		{
			try {
				ins_status = new_login_requrest.checkInstanceSetup(instance_id, local_oracle_connection);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				response.sendRedirect("server_error.jsp");
			}
			
			if(ins_status == 1)
			{
			
				HttpSession user_session = request.getSession();
				user_session.setAttribute("logged_user", username);
				response.sendRedirect("cropoverview.jsp");
			}
			else
			{
				HttpSession user_session = request.getSession();
				user_session.setAttribute("logged_user", username);
				response.sendRedirect("sector_setup.jsp");
				
			}
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
	
	
	public Connection oracle_connector() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");  
		  
		Connection mysql_con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/agile_agro","root","morpheus");  
		
		return mysql_con;
	}
}
