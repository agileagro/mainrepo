package com.agile.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.agile.resources.User;

public class UserLoginDAO {
	
	/*private DataSource dataSource;
	
	public UserLoginDAO(DataSource newDataSource) throws SQLException
	{
		setDataSource(newDataSource);
	}

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}*/ // Use datasource for HCP
	
	public int checkUser(String username,String passcode,String instance_id,Connection local_connection) throws SQLException
	{
		int return_status = 0; // 0 for invalid user, 1 for registered, 500 for internal error.
		Connection connection = local_connection;  //DataSource.getCOnnection() for HCP
    	PreparedStatement pstmt = null;
    	
    	try {
			pstmt = connection.prepareStatement("SELECT * FROM users WHERE username LIKE '" + username + "' AND PASSCODE LIKE '" + passcode + "' and instance_id like '" + instance_id + "'");
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
    
    		User logged_user = new User();
    		
    		logged_user.setInstance_id(rs.getString(1));
    		logged_user.setUser_id(rs.getString(2));
    		logged_user.setUsername(rs.getString(3));
    		logged_user.setPasscode(rs.getString(4));
    		
    		return_status = 1;
			return return_status;
    		
    	}
    	
    	else
    	{
    		
    		return_status = 0;
			return return_status;
    	}
		
	}
	
	public int checkInstanceSetup(String instance_id,Connection local_connection) throws SQLException
	{
		int instance_status = 0;
		Connection connection = local_connection;  //DataSource.getCOnnection() for HCP
    	PreparedStatement pstmt = null;
    	ResultSet result = null;
		
    	try {
			pstmt = connection.prepareStatement("SELECT status FROM instance WHERE instance_id like '" + instance_id + "'");
		} catch (SQLException e) {
			return 500;
		}
    	
    	result = pstmt.executeQuery();
    	
    	if(result.next())
    	{
    		instance_status = 1;
    	}
    	else
    	{
    		instance_status = 0;
    	}
		
		return instance_status;
	}

}
