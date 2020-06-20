<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import ="java.io.*,java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="valid.js"></script>
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
    	
    		inst = inst+ "child" ;
    		fin = "select * from "+inst+" where srno=?";
    	long id = Long.parseLong(token);
    		PreparedStatement pstmt = con.prepareStatement(fin);
    		pstmt.setLong(1,id);
    	
    	System.out.println(fin);
    	
		
    	ResultSet rs=pstmt.executeQuery();
    	
    	if(rs.next())
    	{
    		System.out.println(rs.getLong("gurdianaadharno"));
    		System.out.println(rs.getString("name"));
    		System.out.println(rs.getLong("mobno"));
    		System.out.println(rs.getDate("dob"));
    		System.out.println(rs.getDate("next"));
 
    	
    %>
    
    <center>
    
    
    <h1>Name : <%=rs.getString("name") %></h1>
    <h1>Aadhar Number : <%=rs.getLong("gurdianaadharno") %></h1>
    <h1>Mobile Number : <%=rs.getLong("mobno") %></h1>
    <h1>Date of Birth : <%=rs.getDate("dob") %></h1>
    <h1>Next Date : <%=rs.getDate("next") %></h1>
    
<br>
<div style="overflow-x:auto;">
<table style="border:2px solid black" style="textalign:center">



<tr>
	<th>bcg_v1</th>
	<td><%=rs.getDate(7)%></td>
</tr>
<tr>
	<th>opv0_v1</th>
	<td><%=rs.getDate(8)%></td>
</tr>
<tr>
	<th>hepb1_v1</th>
	<td><%=rs.getDate(9)%></td>
</tr>
<tr>
	<th>dtp1_v2</th>
	<td><%=rs.getDate(10)%></td>
</tr>
<tr>
	<th>ipv1_v2</th>
	<td><%=rs.getDate(11)%></td>
</tr>
<tr>
	<th>hepb2_v2</th>
	<td><%=rs.getDate(12)%></td>
</tr>
<tr>
	<th>hib1_v2</th>
	<td><%=rs.getDate(13)%></td>
</tr>
<tr>
	<th>rotavirus1_v2</th>
	<td><%=rs.getDate(14)%></td>
</tr>
<tr>
	<th>pcv1_v2</th>
	<td><%=rs.getDate(15)%></td>
</tr>
<tr>
	<th>dtp2_v3</th>
	<td><%=rs.getDate(16)%></td>
</tr>
<tr>
	<th>hib2_v3</th>
	<td><%=rs.getDate(17)%></td>
</tr>
<tr>
	<th>ipv2_v3</th>
	<td><%=rs.getDate(18)%></td>
</tr>
<tr>
	<th>hepb3_v3</th>
	<td><%=rs.getDate(19)%></td>
</tr>
<tr>
	<th>rotavirus2_v3</th>
	<td><%=rs.getDate(20)%></td>
</tr>
<tr>
	<th>pcv2_v3</th>
	<td><%=rs.getDate(21)%></td>
</tr>
<tr>
	<th>dtp3_v4</th>
	<td><%=rs.getDate(22)%></td>
</tr>
<tr>
	<th>hib3_v4</th>
	<td><%=rs.getDate(23)%></td>
</tr>
<tr>
	<th>ipv3_v4</th>
	<td><%=rs.getDate(24)%></td>
</tr>
<tr>
	<th>hepb4_v4</th>
	<td><%=rs.getDate(25)%></td>
</tr>
<tr>
	<th>rotavirus3_v4</th>
	<td><%=rs.getDate(26)%></td>
</tr>
<tr>
	<th>pcv3_v4</th>
	<td><%=rs.getDate(27)%></td>
</tr>
<tr>
	<th>tcv_v5</th>
	<td><%=rs.getDate(28)%></td>
</tr>
<tr>
	<th>mmr1_v6</th>
	<td><%=rs.getDate(29)%></td>
</tr>
<tr>
	<th>hepa1_v7</th>
	<td><%=rs.getDate(30)%></td>
</tr>
<tr>
	<th>influenza1_v7</th>
	<td><%=rs.getDate(31)%></td>
</tr>
<tr>
	<th>mmr2_v8</th>
	<td><%=rs.getDate(32)%></td>
</tr>
<tr>
	<th>varicella1_v8</th>
	<td><%=rs.getDate(33)%></td>
</tr>
<tr>
	<th>influenza2_v8</th>
	<td><%=rs.getDate(34)%></td>
</tr>
<tr>
	<th>pcvbooster1_v8</th>
	<td><%=rs.getDate(35)%></td>
</tr>
<tr>
	<th>dtpb1_v9</th>
	<td><%=rs.getDate(36)%></td>
</tr>
<tr>
	<th>ipvb1_v9</th>
	<td><%=rs.getDate(37)%></td>
</tr>
<tr>
	<th>hepa2_v9</th>
	<td><%=rs.getDate(38)%></td>
</tr>
<tr>
	<th>hipb1_v9</th>
	<td><%=rs.getDate(39)%></td>
</tr>
<tr>
	<th>dtpb2_v10</th>
	<td><%=rs.getDate(40)%></td>
</tr>
<tr>
	<th>varicella_v10</th>
	<td><%=rs.getDate(41)%></td>
</tr>
<tr>
	<th>mmr3_v10</th>
	<td><%=rs.getDate(42)%></td>
</tr>
<tr>
	<th>tdap1_v11</th>
	<td><%=rs.getDate(43)%></td>
</tr>
<tr>
	<th>hpv1n2_v11</th>
	<td><%=rs.getDate(44)%></td>
</tr>
<tr>
	<th>tdap2_v12</th>
	<td><%=rs.getDate(45)%></td>
</tr>
<tr>
	<th>hpv1n2n3_v12</th>
	<td><%=rs.getDate(46)%></td>
</tr>
	
</table>
</div>	<!-- <div class="option"> -->
</center>
<%} %> 
</body>
</html>