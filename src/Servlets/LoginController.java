package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utils.DbUtil;


@WebServlet("/checkLogin") // L'acton de la methode post du form login
public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             
		String username=request.getParameter("mail");
		String password=request.getParameter("password");				
		Connection con=DbUtil.getConnection();		
		ResultSet set=null;
		int i=0;
		try
		{
		 Statement st=con.createStatement();
		 String sql = "Select * from  utilisateur where email='"+username+"' and numTel='"+password+"' ";
		 
		 System.out.println(sql);
		 set=st.executeQuery(sql);
		 
		 while(set.next())
		 {
			 i=1;
		 }
		 
		 if(i!=0)
		 
		 {   HttpSession session=request.getSession();
		     session.setAttribute("user",username);
			 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsps/home.jsp");
			 rd.forward(request, response);

		 }
		 else
		 {   request.setAttribute("Errour d'accès","Mail ou mot de passe invalide");
			 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/login.jsp");
			 rd.forward(request, response);
		 }
		}catch(SQLException sqe){System.out.println("Error : While Fetching records from database");}
		try
		{
		 con.close();	
		}catch(SQLException se){System.out.println("Error : While Closing Connection");}

		
		
	}

}
