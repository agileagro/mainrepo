package com.agile.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.agile.resources.Instance;

public class InstanceDAO {
	
	public int addNewInstance(Instance instance_obj,Connection local_connection)throws SQLException
	{
		
		int return_status = 0; // 0 for invalid , 1 registered, 500 for internal error.
		Connection connection = local_connection;  //DataSource.getCOnnection() for HCP
    	PreparedStatement pstmt = null;
    	
    	try {
			pstmt = connection.prepareStatement("INSERT INTO instance VALUES ('" + instance_obj.getInstance_id()  + "','" 
												+ instance_obj.getInstance_name() + "','" + instance_obj.getLocation() + "',"
												+ instance_obj.getTotal_area() + "," + instance_obj.getCovarage() + ",'" 
												+ instance_obj.getOrg() + "','" + instance_obj.getCountry() + "',"
												+ instance_obj.getSector_count() + "," + 0 + " )");
			
			pstmt.executeUpdate();
			
			System.out.println("instance table updated!");
			
			pstmt = connection.prepareStatement("INSERT INTO users (INSTANCE_ID,USERNAME,PASSCODE) VALUES ('" + instance_obj.getInstance_id() + "','" + instance_obj.getDef_user() + "','" + instance_obj.getDef_pass() + "')");
			
			pstmt.executeUpdate();
			
			System.out.println("user table updated!");
			
			return_status = 1;
			return return_status;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return_status = 500;
			return return_status;
		}
    								
	}

}
