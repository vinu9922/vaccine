<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.io.*,java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Home</title>
	<script type="text/javascript" src="valid.js"></script>

	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>
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
    




<body id="admin_body">


	<div class="container1" id="container">
		<header>
			<img src="./images/header.png" style="width: 100%">
		</header>
		<div id="navigate">
		<ul>
				<a href="search.jsp"><li class="id1">Search</li></a>
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
			<form  name="childupdate" id="childupdate" method="post" autocomplete="on" enctype="form-data">
				<div class="container"><br>
					<section id="lf">
					<center><h1>--- Child's Registration ---</h1></center>

					<br>
					<hr>
					<div class="nested">
						<div> Name of Child:</div>
						<div class="input"><input type="text" name="FullName" id="FullName" value="<%=rs.getString("name") %>"></div>
					</div>
					<div class="nested">
						<div>Guardian's Aadhar no.:</div>
						<div class="input"><input type="text" name="gd" id="gd" value="<%=rs.getLong("gurdianaadharno")%>"></div>
					</div>
		      <div class="nested">
						<div>Child's Aadhar no.</div>
						<div class="input"><input type="text" name="Aadhar" id="Aadhar" value = "<%=rs.getLong("childaadharno")%>"></div>
					</div>
					<div class="nested">
						<div>Guardian's Mobile No.:</div>
						<div><input type="text" name="Mobile" id="Mobile" value="<%=rs.getLong("mobno")%>"></div>
					</div>
					<div class="nested">
						<div> Date Of Birth:</div>
						<div class="input"><input type="date" name="Pregnancy" id="Pregnancy" value = "<%=rs.getDate("dob") %>"></div>
					</div>
					<div class="nested">
							<div> Male or Female : </div>
							<div class="input">
								<select name="morf" id="morf">
									<option value="<%=rs.getString("gender")%>">select male or Female</option>
									<option value="male">male</option>
									<option value="female">female</option>
								</select>
							</div>
					</div>

			</div>
			<center><button class="btn" type="button" onclick="return childupdate1()">SUBMIT</button></center>
		</form>
<br>
<%
}%>
<br>
		</div>
	</div>
</body>

</html>
