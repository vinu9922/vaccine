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
		inst+="child";
		
    	String fin;
    	String worc = request.getParameter("worc");
    	String token = request.getParameter("token");
    	System.out.println(token);
    	Connection con=sih2020.connection.getConnection();
    	
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
 
    		session.setAttribute("child_adhar", rs.getLong("srno"));
    		session.setAttribute("child_next", rs.getDate("next"));
    %>
    
    <center>
    
    
    <h1>Name : <%=rs.getString("name") %></h1>
    <h1>Aadhar Number : <%=rs.getLong("gurdianaadharno") %></h1>
    <h1>Mobile Number : <%=rs.getLong("mobno") %></h1>
    <h1>Date of Birth : <%=rs.getDate("dob") %></h1>
    <h1>Next Date : <%=rs.getDate("next") %></h1>
				    
				<br>
			<hr>
			<form name="childsearch2" id="childsearch2" method="post" autocomplete="off" enctype="form-data">
				<div style="overflow-x:auto;">
					<table id="c_table" style="border:2px solid black" style="textalign:center">
					
					
					<tr>
						<th>bcg_v1</th>
						<td><%=rs.getDate(8)%></td>
						<td><input type="checkbox" name="childcheck" value="v1">V1</td>
					</tr>
					<tr>
						<th>opv0_v1</th>
						<td><%=rs.getDate(9)%></td>
						<td><input type="checkbox" name="childcheck" value="v1">V1</td>
					</tr>
					<tr>
						<th>hepb1_v1</th>
						<td><%=rs.getDate(10)%></td>
						<td><input type="checkbox" name="childcheck" value="v1">V1</td>
					</tr>
					<tr>
						<th>dtp1_v2</th>
						<td><%=rs.getDate(11)%></td>
						<td><input type="checkbox" name="childcheck" value="v2">V2</td>
					</tr>
					<tr>
						<th>ipv1_v2</th>
						<td><%=rs.getDate(12)%></td>
						<td><input type="checkbox" name="childcheck" value="v2">V2</td>
					</tr>
					<tr>
						<th>hepb2_v2</th>
						<td><%=rs.getDate(13)%></td> 
						<td><input type="checkbox" name="childcheck" value="v2">V2</td>
					</tr>
					<tr>
						<th>hib1_v2</th>
						<td><%=rs.getDate(14)%></td>
						<td><input type="checkbox" name="childcheck" value="v2">V2</td>
					</tr>
					<tr>
						<th>rotavirus1_v2</th>
						<td><%=rs.getDate(15)%></td>
						<td><input type="checkbox" name="childcheck" value="v2">V2</td>
					</tr>
					<tr>
						<th>pcv1_v2</th>
						<td><%=rs.getDate(16)%></td>
						<td><input type="checkbox" name="childcheck" value="v2">V2</td>
					</tr>
					<tr>
						<th>dtp2_v3</th>
						<td><%=rs.getDate(17)%></td>
						<td><input type="checkbox" name="childcheck" value="v3">V3</td>
					</tr>
					<tr>
						<th>hib2_v3</th>
						<td><%=rs.getDate(18)%></td>
						<td><input type="checkbox" name="childcheck" value="v3">V3</td>
					</tr>
					<tr>
						<th>ipv2_v3</th>
						<td><%=rs.getDate(19)%></td>
						<td><input type="checkbox" name="childcheck" value="v3">V3</td>
					</tr>
					<tr>
						<th>hepb3_v3</th>
						<td><%=rs.getDate(20)%></td>
						<td><input type="checkbox" name="childcheck" value="v3">V3</td>
					</tr>
					<tr>
						<th>rotavirus2_v3</th>
						<td><%=rs.getDate(21)%></td>
						<td><input type="checkbox" name="childcheck" value="v3">V3</td>
					</tr>
					<tr>
						<th>pcv2_v3</th>
						<td><%=rs.getDate(22)%></td>
						<td><input type="checkbox" name="childcheck" value="v3">V3</td>
					</tr>
					<tr>
						<th>dtp3_v4</th>
						<td><%=rs.getDate(23)%></td>
						<td><input type="checkbox" name="childcheck" value="v4">V4</td>
					</tr>
					<tr>
						<th>hib3_v4</th>
						<td><%=rs.getDate(24)%></td>
						<td><input type="checkbox" name="childcheck" value="v4">V4</td>
					</tr>
					<tr>
						<th>ipv3_v4</th>
						<td><%=rs.getDate(25)%></td>
						<td><input type="checkbox" name="childcheck" value="v4">V4</td>
					</tr>
					<tr>
						<th>hepb4_v4</th>
						<td><%=rs.getDate(26)%></td>
						<td><input type="checkbox" name="childcheck" value="v4">V4</td>
					</tr>
					<tr>
						<th>rotavirus3_v4</th>
						<td><%=rs.getDate(27)%></td>
						<td><input type="checkbox" name="childcheck" value="v4">V4</td>
					</tr>
					<tr>
						<th>pcv3_v4</th>
						<td><%=rs.getDate(28)%></td>
						<td><input type="checkbox" name="childcheck" value="v4">V4</td>
					</tr>
					<tr>
						<th>tcv_v5</th>
						<td><%=rs.getDate(29)%></td>
						<td><input type="checkbox" name="childcheck" value="v5">V5</td>
					</tr>
					<tr>
						<th>mmr1_v6</th>
						<td><%=rs.getDate(30)%></td>
						<td><input type="checkbox" name="childcheck" value="v6">V6</td>
					</tr>
					<tr>
						<th>hepa1_v7</th>
						<td><%=rs.getDate(31)%></td>
						<td><input type="checkbox" name="childcheck" value="v7">V7</td>
					</tr>
					<tr>
						<th>influenza1_v7</th>
						<td><%=rs.getDate(32)%></td>
						<td><input type="checkbox" name="childcheck" value="v7">V7</td>
					</tr>
					<tr>
						<th>mmr2_v8</th>
						<td><%=rs.getDate(33)%></td>
						<td><input type="checkbox" name="childcheck" value="v8">V8</td>
					</tr>
					<tr>
						<th>varicella1_v8</th>
						<td><%=rs.getDate(34)%></td>
						<td><input type="checkbox" name="childcheck" value="v8">V8</td>
					</tr>
					<tr>
						<th>influenza2_v8</th>
						<td><%=rs.getDate(35)%></td>
						<td><input type="checkbox" name="childcheck" value="v8">V8</td>
					</tr>
					<tr>
						<th>pcvbooster1_v8</th>
						<td><%=rs.getDate(36)%></td>
						<td><input type="checkbox" name="childcheck" value="v8">V8</td>
					</tr>
					<tr>
						<th>dtpb1_v9</th>
						<td><%=rs.getDate(37)%></td>
						<td><input type="checkbox" name="childcheck" value="v9">V9</td>
					</tr>
					<tr>
						<th>ipvb1_v9</th>
						<td><%=rs.getDate(38)%></td>
						<td><input type="checkbox" name="childcheck" value="v9">V9</td>
					</tr>
					<tr>
						<th>hepa2_v9</th>
						<td><%=rs.getDate(39)%></td>
						<td><input type="checkbox" name="childcheck" value="v9">V9</td>
					</tr>
					<tr>
						<th>hipb1_v9</th>
						<td><%=rs.getDate(40)%></td>
						<td><input type="checkbox" name="childcheck" value="v9">V9</td>
					</tr>
					<tr>
						<th>dtpb2_v10</th>
						<td><%=rs.getDate(41)%></td>
						<td><input type="checkbox" name="childcheck" value="v10">V10</td>
					</tr>
					<tr>
						<th>varicella_v10</th>
						<td><%=rs.getDate(42)%></td>
						<td><input type="checkbox" name="childcheck" value="v10">V10</td>
					</tr>
					<tr>
						<th>mmr3_v10</th>
						<td><%=rs.getDate(43)%></td>
						<td><input type="checkbox" name="childcheck" value="v10">V10</td>
					</tr>
					<tr>
						<th>tdap1_v11</th>
						<td><%=rs.getDate(44)%></td>
						<td><input type="checkbox" name="childcheck" value="v11">V11</td>
					</tr>
					<tr>
						<th>hpv1n2_v11</th>
						<td><%=rs.getDate(45)%></td>
						<td><input type="checkbox" name="childcheck" value="v11">V11</td>
					</tr>
					<tr>
						<th>tdap2_v12</th>
						<td><%=rs.getDate(46)%></td>
						<td><input type="checkbox" name="childcheck" value="v12">V12</td>
					</tr>
					<tr>
						<th>hpv1n2n3_v12</th>
						<td><%=rs.getDate(47)%></td>
						<td><input type="checkbox" name="childcheck" value="v12">V12</td>
					</tr>
						
					</table>
					</div>	<!-- <div class="option"> -->
					<br>
					<center><button class="btn"type="button" onclick="return childsearch1()">SUBMIT</button></center>
					<br><br><br><br>
				</form>
	</center>
<%} %> 


			
		</div>
	</div>
</body>

</html>
