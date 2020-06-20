<%@ page trimDirectiveWhitespaces="true" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
con=sih2020.connection.getConnection();
/*
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata?useTimezone=true&serverTimezone=UTC" , "root", "");
} catch (Exception e) {
	e.printStackTrace();
}*/
if(con!=null)
{
	String institute=request.getParameter("institute");
	String password=request.getParameter("password");
						
	System.out.println("institute="+institute);
	System.out.println("password"+password);

	PreparedStatement pstmt=con.prepareStatement("select password from institute where instid=?");
	pstmt.setString(1,institute);
	ResultSet rs=pstmt.executeQuery();
	String p=null;
	if(rs.next())
	{
		p=rs.getString("password");
		if(p.equals(password))
		{
			session.setAttribute("institute", institute);
			session.setAttribute("password", password);
			response.sendRedirect("search.html");
		}
		else
		{
			out.println("<h1 style='color:blue; left-margin=700px;'> Entered Password is Invalid Try Again!!!.</h1>");
			RequestDispatcher rd=request.getRequestDispatcher("a.jsp");
			rd.include(request,response);
		}
	}
	else
	{
		out.println("<h1 style='color:blue; left-margin=700px;'>Please fill the Proper Username and Password.</h1>");
		RequestDispatcher rd=request.getRequestDispatcher("a.jsp");
		rd.include(request,response);
	}
	con.close();
}
else
{
	out.print("no connection");
}
%>
</body>
</html>