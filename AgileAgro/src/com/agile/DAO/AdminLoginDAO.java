package com.agile.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.agile.resources.Admin;


public class AdminLoginDAO {
	
	public int checkAdmin(String admin_name,String passcode,Connection local_connection) throws SQLException
	{
		int return_status = 0; // 0 for invalid user, 1 for registered, 500 for internal error.
		Connection connection = local_connection;  //DataSource.getCOnnection() for HCP
    	PreparedStatement pstmt = null;
    	
    	try {
			pstmt = connection.prepareStatement("SELECT * FROM agile_admin WHERE username LIKE '" + admin_name + "' AND password LIKE '" + passcode + "'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return_status = 500;
			return return_status;
		}
    	ResultSet rs = null;
		try {
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return_status = 500;
			return return_status;
		}
    	
    	if(rs.next())
    	{
    		
    		Admin logged_admin = new Admin();
    		
    		logged_admin.setAdmin_name(rs.getString(1));
    		logged_admin.setAdmin_passcode(rs.getString(2));
    		return_status = 1;
			return return_status;
    		
    	}
    	
    	else
    	{

    		return_status = 0;
			return return_status;
    	}
		
	}

}
