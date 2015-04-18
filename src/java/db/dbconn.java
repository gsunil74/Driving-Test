/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author c0631942
 */
public class dbconn {
    
    
    
    public static Connection getconnection() 
	{
		Connection con=null;
		try
		{
			 Class.forName("com.mysql.jdbc.Driver");  
	          con = DriverManager.getConnection(  
	                    "jdbc:mysql://localhost:3306/bokka", "root", ""); 
		  
		}
		catch(Exception ex)
		{
		  ex.printStackTrace();
		}
		return con;
	}
    
}
