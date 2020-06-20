package sih2020;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class womenregister
 */
@WebServlet("/transfer2")
public class transfer2 extends HttpServlet {
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
			ResultSet rs=null;
			con=connection.getConnection();
			String form=req.getParameter("form");
			System.out.println("form="+form);
			int n=0;
			if(con!=null){
					
//					if(form.equals("womanreg"))
//					{		
				HttpSession session=req.getSession();
				String inst=(String)session.getAttribute("institute");
				
						
						String institute=req.getParameter("institute2");
						String token=req.getParameter("AdhaarNo");
						String worc=req.getParameter("worc");
						String state=req.getParameter("state");
						String dist=req.getParameter("dist");
						String taluka=req.getParameter("taluka");
						
						Long uid=Long.parseLong(token);
						
						System.out.println("institute="+institute);
						System.out.println("AdhaarNo"+token);
						System.out.println("worc"+worc);		
						System.out.println("state="+state);
						System.out.println("dist"+dist);
						System.out.println("taluka"+taluka);

						String sql="select instid from institute inner join talukas where talukas.taluka_id=institute.taluka_id and talukas.taluka=? ";
						System.out.println(sql);
						pstmt=con.prepareStatement(sql);
						pstmt.setString(1,taluka);
						rs=pstmt.executeQuery();
						String s=null;
						while(rs.next())
						{
							s=rs.getString("instid");
							sql="select aadharno from "+s+" where aadharno=?";
							pstmt=con.prepareStatement(sql);
							pstmt.setLong(1,uid);
							rs=pstmt.executeQuery();
							if(rs.next())
								break;
							
						}
						if(worc.equals("women")) 
						{
							
							String sql1="insert into "+inst+" select * from "+s+" where aadharno=?";
							System.out.println(sql1);
							pstmt=con.prepareStatement(sql1);
							pstmt.setLong(1,uid);
							n=pstmt.executeUpdate();
							String sql2="delete from "+s+" where aadharno=?";
							System.out.println(sql2);
							pstmt=con.prepareStatement(sql2);
							pstmt.setLong(1,uid);
							n=pstmt.executeUpdate();
						}
						else if(worc.equals("child")) {
							
							String sql1="insert into "+inst+" select * from "+s+" where srno=?";
							System.out.println(sql1);
							pstmt=con.prepareStatement(sql1);
							pstmt.setLong(1,uid);
							n=pstmt.executeUpdate();
							String sql2="delete from "+s+" where srno=?";
							pstmt=con.prepareStatement(sql2);
							pstmt.setLong(1, uid);
							n=pstmt.executeUpdate();
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