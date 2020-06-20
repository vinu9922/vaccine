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

/**
 * Servlet implementation class womenregister
 */
@WebServlet("/transfer")
public class transfer extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection con=null;
		PreparedStatement pstmt=null;
		PreparedStatement pstmt1=null;
		
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
						String inst1=inst;
						
						String institute=req.getParameter("institute");
						
						String token=req.getParameter("token");
						String worc=req.getParameter("worc");
						
						
						
						System.out.println("institute="+institute);
						System.out.println("token"+token);
						
						

						
					
						inst+=worc;
						institute+=worc;					
						Long uid=Long.parseLong(token);
						
						
						if(worc.equals("women")) 
						{
							
							String sql="insert into "+inst+" select * from "+institute+" where aadharno=?";
							System.out.println(sql);
							pstmt=con.prepareStatement(sql);
							pstmt.setLong(1,uid);
							n=pstmt.executeUpdate();
							String sql1="delete from "+institute+" where aadharno=?";
							System.out.println(sql1);
							pstmt=con.prepareStatement(sql1);
							pstmt.setLong(1,uid);
							n=pstmt.executeUpdate();
						}
						else if(worc.equals("child")) {
							
							String sql="insert into "+inst+" (gurdianaadharno ,childaadharno ,name ,gender,dob ,mobno ,bcg_v1 ,opv0_v1 ,hepb1_v1 ,dtp1_v2 ,ipv1_v2 ,hepb2_v2 ,hib1_v2 ,rotavirus1_v2 ,pcv1_v2 ,dtp2_v3 ,hib2_v3 ,ipv2_v3 ,hepb3_v3 ,rotavirus2_v3 ,pcv2_v3 ,dtp3_v4 ,hib3_v4 ,ipv3_v4 ,hepb4_v4 ,rotavirus3_v4 ,pcv3_v4 ,tcv_v5 ,mmr1_v6 ,hepa1_v7 ,influenza1_v7 ,mmr2_v8 ,varicella1_v8 ,influenza2_v8 ,pcvbooster1_v8 ,dtpb1_v9 ,ipvb1_v9 ,hepa2_v9 ,hipb1_v9 ,dtpb2_v10 ,varicella_v10 ,mmr3_v10 ,tdap1_v11 ,hpv1n2_v11 ,tdap2_v12 ,hpv1n2n3_v12,next)                                               select   gurdianaadharno ,childaadharno ,name ,gender,dob ,mobno ,bcg_v1 ,opv0_v1 ,hepb1_v1 ,dtp1_v2 ,ipv1_v2 ,hepb2_v2 ,hib1_v2 ,rotavirus1_v2 ,pcv1_v2 ,dtp2_v3 ,hib2_v3 ,ipv2_v3  ,hepb3_v3  ,rotavirus2_v3  ,pcv2_v3  ,dtp3_v4  ,hib3_v4  ,ipv3_v4  ,hepb4_v4  ,rotavirus3_v4  ,pcv3_v4  ,tcv_v5  ,mmr1_v6  ,hepa1_v7  ,influenza1_v7  ,mmr2_v8  ,varicella1_v8  ,influenza2_v8  ,pcvbooster1_v8  ,dtpb1_v9  ,ipvb1_v9  ,hepa2_v9  ,hipb1_v9  ,dtpb2_v10  ,varicella_v10  ,mmr3_v10  ,tdap1_v11  ,hpv1n2_v11  ,tdap2_v12 ,hpv1n2n3_v12,next  from "+institute+" where srno=?";
							System.out.println(sql);
							pstmt=con.prepareStatement(sql);
							pstmt.setLong(1,uid);
							n=pstmt.executeUpdate();
							String sql1="delete from "+institute+" where srno=?";
							pstmt=con.prepareStatement(sql1);
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