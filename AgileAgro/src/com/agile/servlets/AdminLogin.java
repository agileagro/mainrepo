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

import com.agile.DAO.AdminLoginDAO;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet(description = "servlet to authorize admin", urlPatterns = { "/AdminLogin" })
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		
		AdminLoginDAO new_admin_login = new AdminLoginDAO();
		
		try {
			/*ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/DefaultDB");
			new_login_requrest = new UserLoginDAO(ds);*/ // Use this snippet for HCP
			local_oracle_connection = oracle_connector();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		String admin_name = request.getParameter("admin_name");
		String admin_passcode = request.getParameter("admin_passcode");
		
		try {
			db_response = new_admin_login.checkAdmin(admin_name, admin_passcode,local_oracle_connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		if(db_response == 1)
		{
			HttpSession admin_session = request.getSession();
            admin_session.setAttribute("logged_admin", admin_name);
			response.sendRedirect("admin/console_home.jsp");
		}
		else
		{
			response.sendRedirect("admin/admin_login_fail.jsp");
		}
		
	}
	
	public Connection oracle_connector() throws ClassNotFoundException, SQLException
	{
		Connection new_oracle_connection = null;
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		new_oracle_connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "sys as sysdba", "morpheus");
		
		return new_oracle_connection;
	}

}
