package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Utils.DbUtil;

public class LoginDAO {

	public static boolean validate(String email,String pass){  
		boolean status=false;  
		
		try{  

		Connection con = DbUtil.getConnection();	
		PreparedStatement ps=con.prepareStatement(  
		"select * from utilisateur where email=? and numTel=?");  
		ps.setString(1,email);  
		ps.setString(2,pass);  
		      
		ResultSet rs=ps.executeQuery(); 
		
		status=rs.next();  
		          
		}catch(Exception e){System.out.println(e);}  
		
		return status;
		
		}  
}
