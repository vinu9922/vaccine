package sih2020;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class womensearch
 */
@WebServlet("/womenSearch")
public class womensearch extends HttpServlet {
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
				
						System.out.println("IN w search java");
				
						HttpSession session=req.getSession();
						String inst=(String)session.getAttribute("institute");
						String inst1=inst;
						inst+="women";
				
						LocalDate d1;
						
						
						String vacc[]=req.getParameterValues("acs");
						System.out.println("vacc in ");
						for(String x : vacc)
							System.out.println(x);
						
						int days=algo.getDiffWomen(vacc[0]);
						System.out.println("days="+days);
						long Aadhar=(long)session.getAttribute("women_adhar");

						System.out.println("Aadhar="+Aadhar);
//						
//						long Aadhar1=Long.parseLong(Aadhar);
						java.util.Date d=new java.util.Date();
						java.sql.Date sd=new java.sql.Date(d.getTime());
						System.out.println("cur date="+sd);
						
						System.out.println("Aadhar1="+Aadhar);
						
						String sql3="select next from "+inst+" where aadharno=?";
						pstmt=con.prepareStatement(sql3);
						pstmt.setLong(1, Aadhar);
						ResultSet rs=pstmt.executeQuery();
						java.sql.Date sd1;
						if(rs.next())
						{
							d1=rs.getDate("next").toLocalDate().plusDays(days);
							 sd1=java.sql.Date.valueOf(d1);
							 System.out.println("next date update ="+d1);
						}
						else {
							 
							sd1=sd;
						}

						
						
						
						
											
						String sql="update "+inst+" set next=? , "+vacc[0]+"=?  where aadharno=?";
						System.out.println(sql);
						
						pstmt=con.prepareStatement(sql);
						pstmt.setDate(1,sd1);
						pstmt.setDate(2,sd);
						pstmt.setLong(3,Aadhar);
						
						
						n=pstmt.executeUpdate();
						if(n==1) {
							System.out.println("successfull!!!!\ninstituteid="+inst1+"\nToken="+Aadhar);
							
						}
						RequestDispatcher rd=req.getRequestDispatcher("/search.html");  
						rd.forward(req, resp);

			   }
			else
				System.out.println("no connection");
		}
		catch (Exception e) {
			e.printStackTrace(); 
		}

		
	}

	
}