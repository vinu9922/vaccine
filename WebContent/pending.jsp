<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
     import ="java.io.*,java.sql.*,javax.sql.*"
    
    %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<script type="text/javascript" src="valid.js"></script>


</head>
<body id="admin_body">
<div class="container1" id="container">
<header>
       <img src="./images/header.png" style="margin-left: 3px;width:100%">
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
		
		<div id="table">
		   <table style="border:2px solid black" style="textalign:center" style="width:100%">
		   	<h3 align="center">Women's Details</h3>
		    <thead>
			    <tr>
			        <th><b>Aadhar no</b></th>
			        <th><b>Name</b></th>
			        <th><b>Mobile no</b></th>
			   	</tr>
		 	</thead>
    
<% 
	
	String inst=(String)session.getAttribute("institute");

	Connection con=sih2020.connection.getConnection();
	
	 CallableStatement cstmt = con.prepareCall("{call pending(?)}");
	 cstmt.setString(1,inst);
	 ResultSet rs1 = cstmt.executeQuery();
	 while(rs1.next()) 
	 {
         System.out.print("aadharno : "+rs1.getLong("aadharno")+", ");
         System.out.print("name"+rs1.getString("name")+", ");
         System.out.print("mobno"+rs1.getLong("mobno")+", ");
         System.out.println();
         %>
         
		 	<tbody>
			    <tr>
				    <td><%=rs1.getLong("aadharno")%></td>
				    <td><%=rs1.getString("name") %></td>
				    <td><%=rs1.getLong("mobno")  %></td>
			    </tr>
			    
		 	</tbody>
		 </table>
	 </div><br><br><br>
	 
	  <div id="table">
		   <table style="border:2px solid black" style="textalign:center" style="width:100%">
		   	<h3 align="center">Child's Details</h3>
		    <thead>
			    <tr>
			    	 <th><b>Sr No</b></th>
			    	  <th><b>Guardian's Aadhar no</b></th>
			        <th><b>Child's Aadhar no</b></th>
			        <th><b>Name</b></th>
			        <th><b>Mobile no</b></th>
			   	</tr>
		 	</thead>
         
         <%
         
      }
	 cstmt.getMoreResults();
	 System.out.println("\nchild table\n");
     ResultSet rs2 = cstmt.getResultSet();
     while(rs2.next()) {
        
        System.out.println();
        System.out.print("srno : "+rs2.getLong("srno")+", ");
        System.out.print("aadharno : "+rs2.getLong("gurdianaadharno")+", ");
        System.out.print("aadharno : "+rs2.getLong("childaadharno")+", ");
        System.out.print("name"+rs2.getString("name")+", ");
        System.out.print("mobno"+rs2.getLong("mobno")+", ");
        
        %>
       
		 	<tbody>
			    <tr>
			    	<td><%=rs2.getLong("srno") %></td>
			    	<td><%=rs2.getLong("gurdianaadharno")%></td>
				    <td><%=rs2.getLong("childaadharno")%></td>
				    <td><%=rs2.getString("name") %></td>
				    <td><%=rs2.getLong("mobno") %></td>
			    </tr>
			    
		 	</tbody>
		 </table>
	 </div><br>
        
        <%
     }
%>


</div>
	</div>
</body>
</html>