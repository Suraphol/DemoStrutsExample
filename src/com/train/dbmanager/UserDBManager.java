package com.train.dbmanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDBManager {

	public static void main(String[] args) {
		dbConnec();
	}
	
	private static void dbConnec() {
		
		
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		
		String url = "jdbc:mysql://h1.host.filess.io:3306/TestMysql_43451d0cd6";
		String user = "user_TestMysql_aa095e4009";
		String pass ="c880cacf715b8e695072abbc8f0da19b4d283444";
		
		
		try {
			con = DriverManager.getConnection(url, user, pass);
			System.out.println(con+" "+(con != null));
			
			if(con != null) {
				System.out.println("Database Connected.");
			}else {
				System.out.println("Database Connect Failed.");
			}
			
			st = con.createStatement();
			rs = st.executeQuery("select * from TM_REGISTER");
	
			System.out.println(con+" "+(con != null));
			String registerId;
            String firstName, surName;
            while (rs.next()) {
            	registerId = rs.getString("REGISTER_ID");
            	firstName = rs.getString("FIRST_NAME").trim();
            	surName = rs.getString("SUR_NAME").trim();
                System.out.println("registerId : " + registerId
                                   + " firstName : " + firstName
                                   + " surName: "+surName);
            }
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
			if(rs != null)
				rs.close();
				
			if(st != null)
				st.close();
			if(con != null)
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
