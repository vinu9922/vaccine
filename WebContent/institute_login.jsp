<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body id="admin_body">


	<div class="container1" id="container">
		<header>
			<img src="./images/header.png" style="width: 100%">
		</header>
		<div id="navigate">
			<ul>
				<a href="search.jsp"><li class="id1">Search</li></a>
				<a href="newUserRegistration.html"><li class="id1">New User Registration</li></a>
				<a href="pending.jsp"><li class="id1">Pending users</li></a>
				<a href="transfer.html"><li class="id1">Transfered user</li></a>
				<a href="dead.html"><li class="id1">Dead</li></a>
				<a href="update.jsp"><li class="id1">Update</li></a>
				<a href="forgot.html"><li class="id1">Forgot Login details</li></a>
			</ul>	
		</div>
		<div id="inbox">
				<form  name="institutelogin" id="institutelogin" method="post" autocomplete="on" enctype="form-data">
		<div class="container">
			<section id="lf">
			<center><h2>---Institute Login---</h2></center>
		          
			<br>
			<hr>
			<div class="nested">
				<div> Insitiute Id</div>
				<div class="input"><input type="text" name="institute" id="institute"></div>
			</div>
			
			<div class="nested">
				<div> Passwrod</div>
				<div class="input"><input type="password" name="password" id="password"></div>
			</div>

			


			
			
			
			</section>
		</div>
	
	<center><button class="btn" type="button" onclick="return institutelogin1()">SUBMIT</button></center>
</form>
<br>
<br>
		</div>
	</div>
</body>

</html>
