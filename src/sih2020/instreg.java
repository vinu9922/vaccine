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

///connection is an interface in java.sql package
@WebServlet("/ireg")
	public class instreg extends HttpServlet {
		//private static final long serialVersionUID = 1L;
	       
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			doPost(request, response);
		}
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			Connection con=null;
			PreparedStatement pstmt=null;
			PreparedStatement pstmt1=null;
			int n=0,n1=0;
			try {
				PrintWriter out=resp.getWriter();
				resp.setContentType("text/html;charset=UTF-8");			
				con=connection.getConnection();
				
				if(con!=null) {
					
							
							String institute=req.getParameter("institute1");
							String pass=req.getParameter("pass");
							String email=req.getParameter("email");
							String taluka=req.getParameter("taluka");
							

							System.out.println("institute="+institute);
							System.out.println("institute="+institute);

							
//							String sql1="insert into pune   (institute) values(?)";
//							pstmt1=con.prepareStatement(sql1);
//							pstmt1.setString(1,institute);
							
							
							String sql="call instReg(?,?,?,?)";
							pstmt=con.prepareStatement(sql);

							pstmt.setString(1, institute);
							pstmt.setString(2,pass);
							pstmt.setString(3,email);
							pstmt.setString(4, taluka);
							n=pstmt.executeUpdate();
//							n1=pstmt1.executeUpdate();
							if(n==1) {
								RequestDispatcher rd=req.getRequestDispatcher("/a.jsp");  
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
