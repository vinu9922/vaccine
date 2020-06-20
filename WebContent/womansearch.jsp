<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import ="java.io.*,java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<header>
       <img src="./images/header.png" style="margin-left: 18px;width:100%">
    </header>
    <hr style="color:red">
    <%
    	String fin;
    	String worc = request.getParameter("worc");
    	String token = request.getParameter("token");
    	String inst = request.getParameter("inst");
    	System.out.println(token);
    	Connection con=sih2020.connection.getConnection();
    	
    		inst = inst+ "women" ;
    		fin = "select * from "+inst+" where aadharno=?";
    	long id = Long.parseLong(token);
    		PreparedStatement pstmt = con.prepareStatement(fin);
    		pstmt.setLong(1,id);
    	
    	System.out.println(fin);
    	
		
    	ResultSet rs=pstmt.executeQuery();
    	
    	if(rs.next())
    	{
    		System.out.println(rs.getLong("aadharno"));
    		System.out.println(rs.getString("name"));
    		System.out.println(rs.getLong("mobno"));
    		System.out.println(rs.getDate("v1"));
    		System.out.println(rs.getDate("v2"));
    		System.out.println(rs.getDate("v3"));
    		System.out.println(rs.getDate("next"));
 
    	
    %>
    
    <center>
    
    
    <h1>Name : <%=rs.getString("name") %></h1>
    <h1>Aadhar Number : <%=rs.getLong("aadharno") %></h1>
    <h1>Mobile Number : <%=rs.getLong("mobno") %></h1>
    <h1>Next Date : <%=rs.getDate("next").toLocalDate().plusDays(366) %></h1>
    
<br>
<div style="overflow-x:auto;">
<table style="border:2px solid black" style="textalign:center">



<tr>
	<th>TT-11</th>
	<td><%=rs.getDate(5)%></td>
</tr>
<tr>
	<th>TT-2</th>
	<td><%=rs.getDate(6)%></td>
</tr>
<tr>
	<th>TT-Booster</th>
	<td><%=rs.getDate(7)%></td>
</tr>


	
</table>
</div>	<!-- <div class="option"> -->
</center>
<%} %> 
</body>
</html>