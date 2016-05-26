package com.agile.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class KBUpdater {
	
	public int kbUpdate(ArrayList<String> Result,Connection con)
	{
		
		PreparedStatement pstmt;
		String insertTableSQL = "INSERT INTO knowledge_base"
				+ "(revision_id, crop_id, min_temp, max_temp, dry_climate, humid_climate, n, p, phos,soil_id, ph_min, ph_max, light_min, light_max) VALUES"
				+ "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try
    	{
    	pstmt = con.prepareStatement(insertTableSQL);
    	
    	pstmt.setInt(1,Integer.parseInt(Result.get(0)));
    	pstmt.setString(2,Result.get(1));
    	pstmt.setString(3,Result.get(2));
    	pstmt.setString(4,Result.get(3));
    	pstmt.setString(5,Result.get(4));
    	pstmt.setString(6,Result.get(5));
    	pstmt.setString(7,Result.get(6));
    	pstmt.setString(8,Result.get(7));
    	pstmt.setString(9,Result.get(8));
    	pstmt.setString(10,Result.get(9));
    	pstmt.setString(11,Result.get(10));
    	pstmt.setString(12,Result.get(11));
    	pstmt.setString(13,Result.get(12));
    	pstmt.setString(14,Result.get(13));
    	
    	pstmt.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		return 500;
    	}
		
		return 1;
	}

}
