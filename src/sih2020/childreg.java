package sih2020;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

///connection is an interface in java.sql package
@WebServlet("/creg")
	public class childreg extends HttpServlet {
		//private static final long serialVersionUID = 1L;
	       
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			doPost(request, response);
		}
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			Connection con=null;
			PreparedStatement pstmt=null;
			
			int n=0;
			try {
				PrintWriter out=resp.getWriter();
				resp.setContentType("text/html;charset=UTF-8");			
				con=connection.getConnection();
				
				if(con!=null) {
					
							HttpSession session=req.getSession();
							String inst=(String)session.getAttribute("institute");
							String inst1=inst;
							inst+="child";
							
							String FullName=req.getParameter("FullName");
							String Aadhar=req.getParameter("Aadhar");
							String Mobile=req.getParameter("Mobile");
							String Guardian=req.getParameter("Guardian");
							String Pregnancy=req.getParameter("Pregnancy");
							String gender=req.getParameter("morf");
							

							long Aadhar1=Long.parseLong(Aadhar);
							long Mobile1=Long.parseLong(Mobile);
							long Guardian1=Long.parseLong(Guardian);
							
							
							java.util.Date d=new java.util.Date();
							java.sql.Date sd=new java.sql.Date(d.getTime());


							System.out.println("FullName="+FullName);
							System.out.println("Aadhar="+Aadhar);
							System.out.println("Mobile="+Mobile);
							System.out.println("Guardian"+Guardian);							
							System.out.println("Pregnancy="+Pregnancy);
							
							
							String sql="insert into "+inst+" (gurdianaadharno,childaadharno,name,dob,mobno,next,gender) values(?,?,?,?,?,?,?)";
							pstmt=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
							pstmt.setLong(1, Guardian1);
							pstmt.setLong(2,Aadhar1);
							pstmt.setString(3, FullName);
							pstmt.setString(4, Pregnancy);
							pstmt.setLong(5, Mobile1);
							pstmt.setDate(6, sd);
							pstmt.setString(7, gender);
							n=pstmt.executeUpdate();
							ResultSet rs=pstmt.getGeneratedKeys();
							
							String sql1="select  languageId from institute i inner join talukas t on i.taluka_id=t.taluka_id inner join districts d on t.distId=d.dist_id inner join states s on d.stateId=s.state_id where instid=?";
							long token=1;
							int l=8;
							if(rs !=null && rs.next())
							{
								System.out.println("Generated Keys="+rs.getLong(1)+"\nInstituteId="+inst1);
								token=rs.getLong(1);
								
							}
							
							pstmt=con.prepareStatement(sql1);
							pstmt.setString(1, inst1);
							ResultSet rs1=pstmt.executeQuery();
							if(rs1.next()) {
								l=rs1.getInt(1);
							}
							
							SendSms.sendSmsReg(l, Mobile, inst1, token);
							
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