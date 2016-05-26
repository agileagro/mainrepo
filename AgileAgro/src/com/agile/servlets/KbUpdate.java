package com.agile.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.agile.DAO.KBUpdater;

/**
 * Servlet implementation class KbUpdate
 */
@WebServlet(description = "servlet to parse & Upload CSV", urlPatterns = { "/KbUpdate" })
@MultipartConfig
public class KbUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KbUpdate() {
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
		
		Connection mysql_con = null;
		
		try {
			mysql_con = db_connector();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("server_error.jsp");
		}
		
		Part filePart = request.getPart("file");
		
		KBUpdater new_csv_upload = new KBUpdater();
		
		InputStream fileContent = filePart.getInputStream();
		BufferedReader CSVBuffer = new BufferedReader(new InputStreamReader(fileContent, "UTF-8"));
		ArrayList<String> Result = new ArrayList<String>();
		String CSVLine;
		
		if (CSVBuffer.readLine() == null) {
			response.getWriter().println("<script>alert('No Data!'); </script>");

		}
		
		while ((CSVLine = CSVBuffer.readLine()) != null) {
			Result = CSVdelimiter(CSVLine);
			try {
				new_csv_upload.kbUpdate(Result, mysql_con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				response.sendRedirect("server_error.jsp");
			}
		}
		
		response.getWriter().println("<script>alert('CSV UPLOADED!'); window.location = 'admin/console_home.jsp';</script>");
	}
	
	public Connection db_connector() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");  
		  
		Connection mysql_con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/agile_agro","root","morpheus");  
		
		return mysql_con;
	}
	
	public static ArrayList<String> CSVdelimiter(String CSV) {
		ArrayList<String> Result = new ArrayList<String>();

		if (CSV != null) {
			String[] splitData = CSV.split("\\s*,\\s*");
			for (int i = 0; i < splitData.length; i++) {
				if (!(splitData[i] == null) || !(splitData[i].length() == 0)) {
					Result.add(splitData[i].trim());
				}
			}
		}

		return Result;
	}

}
