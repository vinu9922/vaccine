package sih2020;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet("/wupdate")
public class womanupdate extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			PrintWriter out=resp.getWriter();
			resp.setContentType("text/html;charset=UTF-8");			
			con=connection.getConnection();
			String form=req.getParameter("form");
			System.out.println("form="+form);
			int n=0;
			if(con!=null){
					
//					if(form.equals("womanreg"))
//					{			
				
						HttpSession session=req.getSession();
						String inst=(String)session.getAttribute("institute");
						long Aadhar1 =(long)session.getAttribute("women_adhar"); 
						String inst1=inst;
						inst+="women";
				
						
						String Mobile=req.getParameter("Mobile");
						String Pregnancy=req.getParameter("Pregnancy");
						String FullName=req.getParameter("FullName");

//						System.out.println("Aadhar="+Aadhar);
						System.out.println("Mobile"+Mobile);
						System.out.println("Pregnancy"+Pregnancy);

//						Aadhar1=Long.parseLong(Aadhar);
						long Mobile1=Long.parseLong(Mobile);
//						long Pregnancy1=Long.parseLong(Pregnancy);
						
						System.out.println("Aadhar1="+Aadhar1);
						System.out.println("Mobile1"+Mobile1);
//						System.out.println("Pregnancy1"+Pregnancy1);

						java.util.Date d=new java.util.Date();
						java.sql.Date sd=new java.sql.Date(d.getTime());
											
						System.out.println("FullName"+FullName);
						
						String sql;
						sql = "update "+inst+" set name=?,mobno=?,pregdate=? where aadharno = ?";
						pstmt=con.prepareStatement(sql);
						pstmt.setLong(4,Aadhar1);
						pstmt.setString(1,FullName);
						pstmt.setLong(2,Mobile1);
						pstmt.setString(3,Pregnancy);
						
						n=pstmt.executeUpdate();
						if(n==1) {
							System.out.println("successfull!!!!\ninstituteid="+inst1+"\nToken="+Aadhar1);
							RequestDispatcher rd=req.getRequestDispatcher("/search.html");  
							rd.forward(req, resp);
						}

			   }
			else
				System.out.println("no connection");
		}
		catch (Exception e) {
			e.printStackTrace(); 
		}

		
	}

	
}