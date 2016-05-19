package com.agile.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.agile.DAO.InstanceDAO;
import com.agile.resources.Instance;

/**
 * Servlet implementation class newinstance
 */
@WebServlet(description = "Handle newly added instances", urlPatterns = { "/newinstance" })
public class newinstance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newinstance() {
        super();
        // TODO Auto-generated constructor stub
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
		
		Instance new_instance = new Instance();
		
		InstanceDAO new_instance_request = new InstanceDAO();
		
		new_instance.setInstance_id("AG" + request.getParameter("instanceid"));
		new_instance.setInstance_name(request.getParameter("instancename"));
		new_instance.setCountry(request.getParameter("country"));
		new_instance.setOrg(request.getParameter("organisationname"));
		new_instance.setTotal_area(Integer.parseInt(request.getParameter("totalarea")));
		new_instance.setCovarage(Integer.parseInt(request.getParameter("areaunder")));
		new_instance.setSector_count(Integer.parseInt(request.getParameter("sectornumber")));
		new_instance.setLocation(request.getParameter("location"));
		new_instance.setDef_user(request.getParameter("defaultuser"));
		new_instance.setDef_pass(request.getParameter("defaultpassword"));
		
		try {
			/*ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/DefaultDB");
			new_login_requrest = new UserLoginDAO(ds);*/ // Use this snippet for HCP
			local_oracle_connection = oracle_connector();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		try {
			db_response = new_instance_request.addNewInstance(new_instance, local_oracle_connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		if(db_response == 1)
		{
			request.setAttribute("username", new_instance.getDef_user());
			request.setAttribute("insname", new_instance.getInstance_name());
			response.sendRedirect("admin/instance_success.jsp?username=" + new_instance.getDef_user() + "&ins=" + new_instance.getInstance_name());
		}
		else
		{
			response.sendRedirect("server_error.jsp");
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
