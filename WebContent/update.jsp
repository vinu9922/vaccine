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
			
			<form  name="update" id="update" method="post" autocomplete="off" enctype="form-data">
				<div class="container">
				<section id="lf">
					<center><h2>---  Update User  ---</h2></center>
						<hr>
					<div class="nested">
							<div> Token Number :</div>
							<div class="input"><input type="text" name="token" id="token"></div>
					</div>
	   				<div class="nested">
						<div> Women Or Child : </div>
						<div class="input">
							<select name="worc" id="worc">
								<option value="">select woman or child</option>
								<option value="w">woman</option>
								<option value="c">child</option>
							</select>
						</div>
					</div>
					
					
				</section>
				</div>
				<br>
				<center><button class="btn"type="button" onclick="return update1()">SUBMIT</button></center>

			</form>
		
		
		</div>
	</div>
</body>

</html>