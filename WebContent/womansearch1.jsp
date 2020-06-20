<%@page import="sih2020.connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.io.*,java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<script type="text/javascript" src="valid.js"></script>


</head>
<body id="admin_body">


	<div class="container1" id="container">
		<header>
			<img src="./images/header.png" style="width: 100%">
		</header>
		<div id="navigate">
			<ul>
				<a href="search.html"><li class="id1">Search</li></a>
				<a href="newWomanRegistration.html"><li class="id1">New Woman Registration</li></a>
				<a href="newChildRegistration.html"><li class="id1">New Child Registration</li></a>
				<a href="pending.jsp"><li class="id1">Pending users</li></a>
				<a href="transfer.html"><li class="id1">Transfered user</li></a>
				<a href="dead.html"><li class="id1">Dead</li></a>
				<a href="update.jsp"><li class="id1">Update</li></a>
				<a href="forgot.html"><li class="id1">Forgot Login details</li></a>
			</ul>	
		</div>
		<div id="inbox">
		
<%
	String inst=(String)session.getAttribute("institute");
	inst+="women";
	Connection con=sih2020.connection.getConnection();
	
		    	String fin;
		    	String worc = request.getParameter("worc");
		    	String token = request.getParameter("token");
		    	System.out.println(token);
		    	
		    	
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
		 
		    		session.setAttribute("women_adhar", rs.getLong("aadharno"));
		    		session.setAttribute("women_next", rs.getDate("next"));
		    %>
		    
		    <center>
		    
		    
		    
				    <h1>Name : <%=rs.getString("name") %></h1>
				    <h1>Aadhar Number : <%=rs.getLong("aadharno") %></h1>
				    <h1>Mobile Number : <%=rs.getLong("mobno") %></h1>
				    <h1>Next Date : <%=rs.getDate("next") %></h1>
				    
				<br>
				<form name="womensearch2" id="womensearch2" method="post" autocomplete="off" enctype="form-data">
				<div style="overflow-x:auto;">
				<table style="border:2px solid black" style="textalign:center">
		
		
		
				<tr>
					<th>TT-1</th>
					<td><%=rs.getDate(5)%></td>
					<td><input type="checkbox" name="acs" value="v1">V1</td>
				</tr>
				<tr>
					<th>TT-2</th>
					<td><%=rs.getDate(6)%></td>
					<td><input type="checkbox" name="acs" value="v2">V2</td>
				</tr>
				<tr>
					<th>TT-Booster</th>
					<td><%=rs.getDate(7)%></td>
					<td><input type="checkbox" name="acs" value="v3">V3</td>
				</tr>
		
		
					
				</table>
				</div>	<!-- <div class="option"> -->
				<br>
				<center><button class="btn"type="button" onclick="return womansearch1()">SUBMIT</button></center>
				<br><br><br>
			</form>
				</center>
				<%} %> 
				</body>
				</html>
			
			

%>
		
		</div>
	</div>
</body>

</html>
