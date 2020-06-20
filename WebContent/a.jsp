<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"    
import="java.io.*,java.sql.*,javax.sql.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
	  <script type="text/javascript" src="valid_adi.js"></script>
	 <script type="text/javascript" src="dist.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>


 <script>
   p1 = 0;
   p2 = 0;
   p3 = 0;
function openForm(x) {
   if(x == 1 && p2 != 1 && p3 != 1)
   {
  document.getElementById("popup1").style.display = "flex";
    p1 = 1;
   }
   if(x == 2 && p1 != 1 && p3 != 1)
   {
  document.getElementById("popup2").style.display = "flex";
    p2 = 1;
   }
   if(x == 3 && p1 != 1 && p2 != 1)
   {
  document.getElementById("popup3").style.display = "flex";
     p3 = 1;
   }
}

function closeForm(y) {
   if(y == 1)
   {
  document.getElementById("popup1").style.display = "none";
    p1 = 0;
   }
  if(y == 2)
  {
  document.getElementById("popup2").style.display = "none";
    p2 = 0;
  }
  if(y == 3)
  {
  document.getElementById("popup3").style.display = "none";
   p3 = 0;
  } 

}

</script>

<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

<body id="admin_body">
   <header>
       <img src="./images/header.png" style="margin-left: 18px;width:100%">
   </header>

<div class="mySlides fade"">
  <div class="numbertext">1 / 4</div>
  <img src="./images/Banner2.jpg" style="margin-left:15%;width:70%;height:470px">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="./images/Banner3.jpg" style="margin-left:15%;width:70%;height:470px">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="./images/Banner4.jpg" style="margin-left:15%;width:70%;height:470px">
 
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="./images/Banner.jpg" style="margin-left:15%;width:70%;height:470px">
 
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
</div>

<br>
 <div class="pop">
         <a class="button" id="button" onclick="openForm('1')" href="#popup" style="font-size:20px;width:20%;height:50px">Login</a>
         <a class="button" id="button1" onclick="openForm('2')" href="#popup" style="font-size:20px;width:20%;height:50px">Register</a>
         <a class="button" id="button1" onclick="openForm('3')" href="#popup" style="font-size:20px;width:30%;height:50px">Doses Tracking</a>
       </div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>


		 
    <div class="container"> 
      <!-- <div class="slider"  > </div-->
      

       <div class="popup" id="popup1">
          <div class="popup-content">
            <img src="./images/close.png" id="class" class="close" onclick="closeForm('1')"></img>
            <form  name="institutelogin" id="institutelogin" method="post" autocomplete="on" enctype="form-data">
            <div class="container">
              <section id="lf">
              <hr>
              <center><h2 style="font-style: italic;text-transform: uppercase;font-size:40px">---Institute Login---</h2></center>
            
              <hr>
                <br>  <br>
              <div class="nested">
	             <div style="font-size:25px">Insitiute Id :</div>
	              <div class="input"><input placeholder="  Institute Id" style="border-radius: 5px;height:35px;width:25%" type="text" name="institute" id="institute"></div>
             </div>
             <br>
             
             <div class="nested">
                <br> <div style="font-size:25px">Password :</div>
                <div class="input"><input  placeholder="  Password" style="border-radius: 5px;height:35px;width:25%;" type="password" name="password" id="password"></div>
             </div>
             
             </section>
            </div>
            <br><br>
            <center><button class="btn" type="button" onclick="return institutelogin1()" style="background-color:#4f5250;color: white; padding: 7px 10px;border-radius: 5px;cursor: pointer;height:45px;width:20%;font-size:20px">SUBMIT</button></center>
            </form>
            <br><br>
          </div>
       </div>

       <div class="popup" id="popup2">
          <div class="popup-content2">
            <img src="./images/close.png" id="class" class="close" onclick="closeForm('2')"></img>
            <form  name="reginst" id="reginst" method="post" autocomplete="on" enctype="form-data">
              <div class="container">
              <section id="lf">
              <hr>
              <center><h2 style="font-style: italic;text-transform: uppercase;font-size:40px"> --- Institute Registration ---</h2></center>
              <hr>  
              <div class="nested">
              <div style="font-size:25px">Institute Id :</div>

              <div class="input"><input placeholder=" Institute Id" style="border-radius: 5px;height:35px;width:25%; type="text" name="institute" id="institute1"></div>
              </div>
              <div class="nested">
	             <div style="font-size:25px">Email Id :</div>
	              <div class="input"><input placeholder="  Institute Id" style="border-radius: 5px;height:35px;width:25%" type="email" name="email" id="email"></div>
             </div>
             <br>
          <div class="nested">

             <div style="font-size:25px">Password :</div>
             <div class="input"><input placeholder=" Password" style="border-radius: 5px;height:35px;width:25%; type="password" name="pass" id="pass"></div>
          </div>      
          <div class="nested" >
            <br><div style="font-size:20px"> State:</div>
              <div>
                <select name="state" id="state" onchange="setDist();" style="padding: 5px;width:20%;height:50%;border-radius: 8px;cursor: pointer;" >
                  <option selected="" value="-1" disabled=" ">select State</option>
                  <option value="Andhra Pradesh">Andhra Pradesh</option>
                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                <option value="Assam">Assam</option>
                <option value="Bihar">Bihar</option>
                <option value="Chandigarh">Chandigarh</option>
                <option value="Chhattisgarh">Chhattisgarh</option>
                <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                <option value="Daman and Diu">Daman and Diu</option>
                <option value="Delhi">Delhi</option>
                <option value="Goa">Goa</option>
                <option value="Gujarat">Gujarat</option>
                <option value="Haryana">Haryana</option>
                <option value="Himachal Pradesh">Himachal Pradesh</option>
                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                <option value="Jharkhand">Jharkhand</option>
                <option value="Karnataka">Karnataka</option>
                <option value="Kerala">Kerala</option>
                <option value="Lakshadweep">Lakshadweep</option>
                <option value="Madhya Pradesh">Madhya Pradesh</option>
                <option value="Maharashtra">Maharashtra</option>
                <option value="Manipur">Manipur</option>
                <option value="Meghalaya">Meghalaya</option>
                <option value="Mizoram">Mizoram</option>
                <option value="Nagaland">Nagaland</option>
                <option value="Odisha">Orissa</option>
                <option value="Puducherry">Pondicherry</option>
                <option value="Punjab">Punjab</option>
                <option value="Rajasthan">Rajasthan</option>
                <option value="Sikkim">Sikkim</option>
                <option value="Tamil Nadu">Tamil Nadu</option>
                <option value="Telangana">Telangana</option>
                <option value="Tripura">Tripura</option>
                <option value="Uttaranchal">Uttaranchal</option>
                <option value="Uttar Pradesh">Uttar Pradesh</option>
                <option value="West Bengal">West Bengal</option>
              </select>
             </div>
          </div>
          <div class="nested" >
            <br><div style="font-size:20px">District:</div>
              <div>
                <select name="dist" id="dist" onchange="setTaluka();" style="padding: 5px;width:20%;height:50%;border-radius: 9px;border-style: double;cursor: pointer;">
                  <option selected="" value="=-1" disabled="">select District</option>
                  <option value="">Please select a State</option>
              </select>
             </div>
          </div>
          <div class="nested" >
            <br><div style="font-size:20px">Taluka:</div>
              <div>
                <select name="taluka" id="taluka" style="padding: 5px;width:20%;height:50%;border-radius: 8px;cursor: pointer;">
                  <option selected="" value="=-1" disabled="">select Taluka</option>
                  <option value="">Please select a District</option>
              </select>
             </div>
          </div>
          
          </section>
      </div>
        <br><br>
        <center><button class="btn"type="button" onclick="return regvalid()" style="background-color:#4f5250;color: white; padding: 7px 10px;border-radius: 5px;cursor: pointer;height:45px;width:20%;font-size:20px">SUBMIT</button></center>
        <br>
      </form>
          </div>
      </div>

      <div class="popup" id="popup3">
          <div class="popup-content3">
            <img src="./images/close.png" id="class" class="close" onclick="closeForm('3')"></img>
             <form  name="usearch" id="usearch" method="post" autocomplete="on" enctype="form-data">
               <div class="container">
                 <section id="lf">
                   <div class="nested" >
                      <hr>
                      <div><h2 style="font-style: italic;text-transform: uppercase;font-size:40px"> --- Woman or Child --- :</h2  ></div>
                      <hr><br><br>
                      <div>
                           <select name="worc" id="worc" style="padding: 12px; border-style: solid;cursor: pointer;width:25%;">
                              <option value="-1">Please select woman or child</option>
                              <option value="Woman">Woman</option>
                              <option value="Child">Child</option>
                            </select>
                      </div>
                   </div>
                    <div class="nested">
                      <br><br>
                      <div style="font-size:20px"> Token Number :</div>
                      <div class="input"><input placeholder="  Token Number" style="border-radius: 5px;height:35px;width:25%" type="text" name="token" id="token"></div>
                    </div>

                    <div class="nested">
                      <br><br>
                       <div style="font-size:20px"> Institue Id :</div>
                      <div class="input"><input placeholder="  Institute Id" style="border-radius: 5px;height:35px;width:25%" type="text" name="inst" id="inst"></div>
                    </div>
                     <br>
                     <br>
                  <center><button class="btn"type="button" onclick="return usersearch()" style="background-color:#4f5250;color: white; padding: 7px 10px;border-radius: 5px;cursor: pointer;height:45px;width:20%;font-size:20px">SUBMIT</button></center>
            </section>
      </div>
      </form>
      <br><br>
		</div>
		</div>
      

	<br>
	<br>
	<br>
	<br>
	<br>
	
	<br>
	<br>
	<br>
	<br> 
	<br><hr>
	<div  class="charts">
	<canvas  id="bar-chart" height="100% "></canvas>
	
		<%
			Connection con=sih2020.connection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from stats");
	    	ResultSet rs=pstmt.executeQuery();
	    	
			 
			rs.next();
			String state = "\"" + rs.getString("state") + "\""+","; 
			String pwomen = "\"" + rs.getInt("pwomen") + "\""+",";
	    	String gchild = "\"" + rs.getInt("gchild") + "\""+",";
			String bchild = "\"" + rs.getInt("bchild") + "\""+",";
			while(rs.next())
	    	{
	    		state = state + "\"" + rs.getString("state") + "\""+",";
				pwomen = pwomen + "\"" + rs.getInt("pwomen") + "\""+",";
	 			gchild = gchild + "\"" + rs.getInt("gchild") + "\""+",";
				bchild = bchild + "\"" + rs.getInt("bchild") + "\""+",";

	    	}
	    	
	    	
				
	    %>  
	    <script type="text/javascript">
	    new Chart(document.getElementById("bar-chart"), {
	        type: 'bar',
	        data: {
	          labels: [<%out.println(state);%>],
	          datasets: [
	            {
	              label: "Pregnant Women",
	              backgroundColor: "#3e95cd",
	              data: [<%out.println(pwomen);%>]
	            },
	            {
	            	label: "Girl Child",
		              backgroundColor: "#8e5ea2",
		              data: [<%out.println(gchild);%>]
	            },
	            {
	            	label: "Boy Child",
		              backgroundColor: "#c45850",
		              data: [<%out.println(bchild);%>]
	            }
	          ]
	        },
	
	        options: {
	          legend: { display: true },
	          title: {
	            display: true,
	            text: 'Data'
	          }
	        }
	    }); 
	    	
	    </script> 				 
	</div>
	</div>
	<hr>
	<footer>
	<marquee direction="left" scrollamount="10" scrolldelay="0" behavior="scroll" bgcolor="skyblue" onmouseover="this.stop();"onmouseout="this.start();">
	 <img src="./images/End_frame.png" style="margin-left: 18px;width:100%;height:110px">
	 </marquee>
	</footer>
</body>

</html>
