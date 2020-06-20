function childreg(){
		var name =  document.getElementById("FullName").value
		var adhar = document.getElementById("Guardian").value
		var cadhar = document.getElementById("Aadhar").value
		var mf = document.getElementById("morf").value
		var mob = document.getElementById("Mobile").value
		var date = document.getElementById("Pregnancy").value

        if(name=="")
		  {
            window.alert("Enter Name ");
            document.getElementById("FullName").focus();
           return false;
          }  
        if(adhar=="")
	      {
	             window.alert("Enter adhaar number");
	             document.getElementById("Guardian").focus();	      
	            return false;
	       }

	    if(adhar.length!=12 )
	     {
	            alert("Enter 12 digit Adhaar number");
	            return false;
	      } 
	       if(cadhar=="")
	      {
	             window.alert("Enter adhaar number");
	             document.getElementById("Aadhar").focus();	      
	            return false;
	       }

	    if(cadhar.length!=12 )
	     {
	            alert("Enter 12 digit Adhaar number");
	            return false;
	      } 
	    if(mob=="")
	     {
	            alert("Enter Mobile number");
	            document.getElementById("Mobile").focus();
	            return false;
	     } 

	   if(mob.length!=10 )
	     {
	            alert("Enter 10 digit Mobile number");
	            return false;
	      } 
	     
	     if(date=="")
	     {
	            alert("Enter Date of Birth");
	            document.getElementById("Pregnancy").focus();
	            return false;
	     } 
	     if(mf=="")
	    	 {
	    	 window.alert("Select male or female");
             document.getElementById("morf").focus();	      
            return false;
	    	 }
	     else
		    {
		    	alert("successfully submitted");
		    	document.getElementById("cpatient").action="creg";
			    document.getElementById("cpatient").submit();
		        return true;
		    }   
}


function womenreg(){
		
		var name =  document.getElementById("FullName").value
		var adhar = document.getElementById("Aadhar").value
		var mob = document.getElementById("Mobile").value
		var date = document.getElementById("Pregnancy").value

		if(name=="")
		  {
            window.alert("Enter Name ");
            document.getElementById("FullName").focus();
           return false;
          }  
        if(adhar=="")
	      {
	             window.alert("Enter adhaar number");
	             document.getElementById("Aadhar").focus();	      
	            return false;
	       }

	    if(adhar.length!=12 )
	     {
	            alert("Enter 12 digit Adhaar number");
	            return false;
	      } 
	    if(mob=="")
	     {
	            alert("Enter Mobile number");
	            document.getElementById("Mobile").focus();
	            return false;
	     } 

	   if(mob.length!=10 )
	     {
	            alert("Enter 10 digit Mobile number");
	            return false;
	      } 

	     if(date=="")
	     {
	            alert("Enter Date of Pregnancy");
	            document.getElementById("Pregnancy").focus();
	            return false;
	     }   

        else
		    {
		    	alert("successfully submitted");
		    	document.getElementById("Patient").action="wreg";
			    document.getElementById("Patient").submit();
		        return true;
		    } 


}


function usersearch(){
		var institute = document.getElementById("inst").value
		var token = document.getElementById("token").value
		var wc = document.getElementById("worc").value
		
 if(wc=="-1")
    {
            window.alert("Please select Woman or Child");
            document.getElementById("worc").focus();
           return false;
    }
 if(token=="")
    {
            window.alert("Enter Token Number");
            document.getElementById("token").focus();
           return false;
    }    
	else if(isNaN(token))
		{
		            alert("Enter digits only");
		            return false;
		}
	if(institute=="")
    {
            window.alert("Enter institute Id");
            document.getElementById("inst").focus();
           return false;
    }  

    else
    {
    	if(wc=="Woman"){
    	document.getElementById("usearch").action="womansearch.jsp";
	    document.getElementById("usearch").submit();
        return true;
    	}

    	else{

    		document.getElementById("usearch").action="childsearch.jsp";
	        document.getElementById("usearch").submit();
            return true;
       	}
    } 

}

function search1(){
	var token = document.getElementById("token").value
	var wc = document.getElementById("worc").value
	
	if(wc=="")
	{
	        window.alert("Please select Woman or Child");
	        document.getElementById("worc").focus();
	       return false;
	}
	if(token=="")
	{
	        window.alert("Enter Token Number");
	        document.getElementById("token").focus();
	       return false;
	}    
	else if(isNaN(token))
		{
		            alert("Enter digits only");
		            return false;
		}
	
	else
	{
		if(wc=="w"){
		document.getElementById("search").action="womansearch1.jsp";
	    document.getElementById("search").submit();
	    return true;
		}
	
		else{
	
			document.getElementById("search").action="childsearch1.jsp";
	        document.getElementById("search").submit();
	        return true;
	   	}
} 

}

function womansearch1() {
	
	var ch = document.getElementsByName("acs")
	var n=ch[0].value;
	
//	alert("ch[0]="+ch[0].value);
	var flag=0;
	var f = 0;
	

	for(i=0;i<ch.length;i++)
	{
		
		if((ch[i].checked)){
			f=1;
			n=ch[i].value;
		}
		
	}
	
	if(f==0){
		window.alert("Select atleast one Vaccines");
		return false;
	}
	
	for(i=0;i<ch.length;i++)
	{
		if(ch[i].checked)
		if(!(ch[i].value==n )){
			flag=1;
		}
	}
	if(flag==1){
		window.alert("Select from a particular group Eg. from only V1 group");
		return false;
	}
	else{
		alert("successfully submitted");
		document.getElementById("womensearch2").action="womenSearch";
		document.getElementById("womensearch2").submit();
		return true;
	}
	
}
function childsearch1() {
	
	var ch = document.getElementsByName("childcheck")
	var n=ch[0].value;
	
//	alert("ch[0]="+ch[0].value);
	var flag=0;
	var f = 0;
	

	for(i=0;i<ch.length;i++)
	{
		
		if((ch[i].checked)){
			f=1;
			n=ch[i].value;
		}
		
	}
	
	if(f==0){
		window.alert("Select atleast one Vaccines");
		return false;
	}
	
	for(i=0;i<ch.length;i++)
	{
		if(ch[i].checked)
		if(!(ch[i].value==n )){
			flag=1;
		}
	}
	if(flag==1){
		window.alert("Select from a particular group Eg. from only V1 group");
		return false;
	}
	else{
		alert("successfully submitted");
		document.getElementById("childsearch2").action="childsearch";
		document.getElementById("childsearch2").submit();
		return true;
	}
	
}

function regvalid(){
		var institute = document.getElementById("institute").value
		var password = document.getElementById("pass").value
		var state = document.getElementById("state").value		
		var dist = document.getElementById("dist").value
		var tal = document.getElementById("taluka").value


	
	if(institute=="")
    {
            window.alert("Enter institute Id");
            document.getElementById("institute").focus();
           return false;
    }
    if(password=="")
    {
            window.alert("Enter Password");
            document.getElementById("pass").focus();
           return false;
    }
    if(state=="-1")
    {
            window.alert("Select State");
            document.getElementById("state").focus();
           return false;
    }
    if(dist=="-1")
    {
            window.alert("Select District");
            document.getElementById("dist").focus();
           return false;
    }
    if(tal=="-1")
    {
            window.alert("Select Taluka");
            document.getElementById("tal").focus();
           return false;
    }

    else
    {
    	alert("successfully submitted");
    	document.getElementById("reginst").action="ireg";
	    document.getElementById("reginst").submit();
        return true;
    } 

}

function userlogin1(){
		var institute = document.getElementById("institute").value
		var token = document.getElementById("token").value
	
	if(institute=="")
    {
            window.alert("Enter institute");
            document.getElementById("institute").focus();
           return false;
    }
    if(token=="")
    {
            window.alert("Enter Token");
            document.getElementById("token").focus();
           return false;
    }
    else if(isNaN(token))
		{
		            alert("Enter digits only");
		            return false;
		}
    else
    {
    	alert("successfully submitted");
    	document.getElementById("userlogin").action="lol";
	    document.getElementById("userlogin").submit();
        return true;
    } 

}
function institutelogin1(){
		var institute = document.getElementById("institute").value
		var password = document.getElementById("password").value
	// var institute = document.forms["userlogin"]["institute"].value
	// var token = document.forms["userlogin"]["token"].value

	if(institute=="")
    {
            window.alert("Enter institute");
            document.getElementById("institute").focus();
           return false;
    }
    if(password=="")
    {
            window.alert("Enter password");
            document.getElementById("password").focus();
           return false;
    }
    else
    {
    	alert("successfully Login");
    	document.getElementById("institutelogin").action="InstituteLogin1.jsp";
	    document.getElementById("institutelogin").submit();
        return true;
    } 
}

function forgot1(){
		var worc = document.getElementById("worc").value
		var AdhaarNo = document.getElementById("AdhaarNo").value
	// var institute = document.forms["userlogin"]["institute"].value
	// var token = document.forms["userlogin"]["token"].value

	if(worc=="-1")
    {
            window.alert("Enter Women or child");
            document.getElementById("worc").focus();
           return false;
    }
    if(AdhaarNo=="")
	 {
	             window.alert("Enter adhaar");
	             document.getElementById("AdhaarNo").focus();
	            return false;
	 }
	else if(AdhaarNo.length!=12 )
	{
	            alert("Enter 12 digit Adhaar number");
	            return false;
	} 
	else if(isNaN(AdhaarNo))
	{
	            alert("Enter digits only");
	            return false;
	}
    else
    {
    	alert("successfully submitted");
    	document.getElementById("forgot").action="forgot1";
	    document.getElementById("forgot").submit();
        return true;
    } 
}


function dead1(){
	var dead = document.getElementById("deadcer").value
	var worc = document.getElementById("worc").value
	var AdhaarNo = document.getElementById("AdhaarNo").value
	
	if(dead=="")
    {
            window.alert("Enter Death Certificate Number");
            document.getElementById("deadcer").focus();
           return false;
    }
	if(AdhaarNo=="")
	 {
	             window.alert("Enter adhaar");
	             document.getElementById("AdhaarNo").focus();
	            return false;
	 }
/*	else if(AdhaarNo.length!=12 )
	{
	            alert("Enter 12 digit Adhaar number");
	            return false;
	} */
	else if(isNaN(AdhaarNo))
	{
	            alert("Enter digits only");
	            return false;
	}
	if(worc=="-1")
    {
            window.alert("Enter Women Or child");
            document.getElementById("worc").focus();
           return false;
    }
    else
    {
    	alert("successfully submitted");
    	document.getElementById("dead").action="dead";
	    document.getElementById("dead").submit();
        return true;
    } 
}
function transfer11(){
    	var institute1 = document.getElementById("institute").value
		var token = document.getElementById("token").value
		var worc = document.getElementById("worc").value


	    if(institute1=="")
	    {
	            window.alert("Enter institute");
	            document.getElementById("institute").focus();
	           return false;
	    }
		
		if(token=="")
	    {
	            window.alert("Enter Token");
	            document.getElementById("token").focus();
	           return false;
	    }
	    else if(isNaN(token))
		{
		            alert("Enter digits only");
		            return false;
		}if(worc=="")
	    {
            window.alert("Enter Women Or Child");
            document.getElementById("worc").focus();
           return false;
    }
	    else
	    {
	    	alert("successfully submitted");
	    	document.getElementById("transfer1").action="transfer";
		    document.getElementById("transfer1").submit();
	        return true;
	    } 

}

function transfer22(){
		var state = document.getElementById("state").value
		var dist = document.getElementById("dist").value
		var taluka = document.getElementById("taluka").value
		var institute = document.getElementById("institute2").value
		var AdhaarNo = document.getElementById("AdhaarNo").value
		var worc = document.getElementById("worc").value

		

	    if(institute=="")
	    {
	            window.alert("Enter institute");
	            document.getElementById("institute2").focus();
	           return false;
	    }
	    if(AdhaarNo=="")
		{
		             window.alert("Enter adhaar");
		             document.getElementById("AdhaarNo").focus();
		            return false;
		}
		else if(AdhaarNo.length!=12 )
		{
		            alert("Enter 12 digit Adhaar number");
		            return false;
		} 
		else if(isNaN(AdhaarNo))
		{
		            alert("Enter digits only");
		            return false;
		}
		if(worc=="")
	    {
	            window.alert("Enter Women Or Child");
	            document.getElementById("worc").focus();
	           return false;
	    }
		if(state=="-1")
	    {
	            window.alert("Enter State");
	            document.getElementById("state").focus();
	           return false;
	    }

	    if(dist=="-1")
	    {
	            window.alert("Select District");
	            document.getElementById("dist").focus();
	           return false;
	    }
	    if(taluka=="-1")
	    {
	            window.alert("Enter Taluka");
	            document.getElementById("taluka").focus();
	           return false;
	    }
	    else
	    {
	    	alert("successfully submitted");
	    	document.getElementById("transfer2").action="transfer2";
		    document.getElementById("transfer2").submit();
	        return true;
	    } 
	    
}
function womenupdate1(){
	
	var name =  document.getElementById("FullName").value
	
	var mob = document.getElementById("Mobile").value
	var date = document.getElementById("Pregnancy").value

	if(name=="")
	  {
        window.alert("Enter Name ");
        document.getElementById("FullName").focus();
       return false;
      }  
   
    if(mob=="")
     {
            alert("Enter Mobile number");
            document.getElementById("Mobile").focus();
            return false;
     } 

   if(mob.length!=10 )
     {
            alert("Enter 10 digit Mobile number");
            return false;
      } 

     if(date=="")
     {
            alert("Enter Date of Pregnancy");
            document.getElementById("Pregnancy").focus();
            return false;
     }   

    else
	    {
	    	alert("successfully submitted");
	    	document.getElementById("womanupdate").action="wupdate";
		    document.getElementById("womanupdate").submit();
	        return true;
	    } 


}
function update1(){
	
	var token = document.getElementById("token").value
	var wc = document.getElementById("worc").value
	
if(wc=="-1")
{
        window.alert("Please select Woman or Child");
        document.getElementById("worc").focus();
       return false;
}
if(token=="")
{
        window.alert("Enter Token Number");
        document.getElementById("token").focus();
       return false;
}    
else if(isNaN(token))
	{
	            alert("Enter digits only");
	            return false;
	}
 

else
{
	if(wc=="w"){
	document.getElementById("update").action="womanupdate.jsp";
    document.getElementById("update").submit();
    return true;
	}

	else{

		document.getElementById("update").action="childupdate.jsp";
        document.getElementById("update").submit();
        return true;
   	}
} 

}
function childupdate1(){
	var name =  document.getElementById("FullName").value
	var adhar = document.getElementById("gd").value
	var cadhar = document.getElementById("Aadhar").value
	var mf = document.getElementById("morf").value
	var mob = document.getElementById("Mobile").value
	var date = document.getElementById("Pregnancy").value

    if(name=="")
	  {
        window.alert("Enter Name ");
        document.getElementById("FullName").focus();
       return false;
      }  
    if(adhar=="")
      {
             window.alert("Enter adhaar number");
             document.getElementById("gd").focus();	      
            return false;
       }

    if(adhar.length!=12 )
     {
            alert("Enter 12 digit Adhaar number");
            return false;
      } 
       if(cadhar=="")
      {
             window.alert("Enter adhaar number");
             document.getElementById("Aadhar").focus();	      
            return false;
       }

    if(cadhar.length!=12 )
     {
            alert("Enter 12 digit Adhaar number");
            return false;
      } 
    if(mob=="")
     {
            alert("Enter Mobile number");
            document.getElementById("Mobile").focus();
            return false;
     } 

   if(mob.length!=10 )
     {
            alert("Enter 10 digit Mobile number");
            return false;
      } 
     
     if(date=="")
     {
            alert("Enter Date of Birth");
            document.getElementById("Pregnancy").focus();
            return false;
     } 
     if(mf=="")
    	 {
    	 window.alert("Select male or female");
         document.getElementById("morf").focus();	      
        return false;
    	 }
     else
	    {
	    	alert("successfully submitted");
	    	document.getElementById("childupdate").action="cupdate";
		    document.getElementById("childupdate").submit();
	        return true;
	    }   
}

function validStolen()
{

	var FullName = document.forms["stolen"]["FullName"].value
	var adhaar = document.forms["stolen"]["adhaar"].value
	var contact = document.forms["stolen"]["contact"].value
	var address = document.forms["stolen"]["address"].value
	var email = document.forms["stolen"]["email"].value
	var DateRangeFrom = document.forms["stolen"]["Date"].value
	var policestation = document.forms["stolen"]["police"].value
	
   	var VehiclePhoto = document.forms["stolen"]["VehiclePhoto"].value
    var Vehiclebill = document.forms["stolen"]["Vehiclebill"].value
     
	 var vehicletype = document.forms["stolen"]["vehicleType"].value
	 var VehicleCompany = document.forms["stolen"]["VehicleCompany"].value
	 var VehicleModel = document.forms["stolen"]["VehicleModel"].value
	 
	 var NumberPlate = document.forms["stolen"]["NumberPlate"].value
	 
	 var ChassisNo = document.forms["stolen"]["ChassisNo"].value
	 var EngineNo = document.forms["stolen"]["EngineNo"].value
	 var PlaceofOccurance = document.forms["stolen"]["Place"].value
	 var description = document.forms["stolen"]["description"].value
	 


     var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/;
     var b=emailfilter.test(email);
     var regName = /^[a-zA-Z]+ [a-zA-Z]+$/;
     var phoneno = /^\d{12}$/;

	
	if(FullName=="")
    {
            window.alert("Enter  full name");
            document.getElementByName("FullName").focus();
           return false;
    }
	
	 if(adhaar=="")
	 {
	             window.alert("Enter adhaar");
	             document.getElementById("adhaar").focus();
	            return false;
	 }
	else if(adhaar.length!=12 )
	{
	            alert("Enter 12 digit Adhaar number");
	            return false;
	} 
	else if(isNaN(adhaar))
	{
	            alert("Enter digits only");
	            return false;
	}
	//validation for email
	if(email=="")
	{
	             window.alert("Enter email");
	             document.getElementById("email").focus();
	            return false;
	}
	else if(b==false)
	{
	              alert("enter valid email");
	              return false;
	} 
	if(contact=="")
	{
	            alert("Enter Mobile number");
	            document.getElementById("contact").focus();
	            return false;
	} 
	else if(contact.length<10)
	{
	            alert("Enter 10 digit Mobile number");
	            return false;
	} 
	else if(isNaN(contact))
	{
	            alert("Enter digits only");
	            return false;
	}
	if(address=="")
	{
	            alert("Enter Address");
	            document.getElementById("address").focus();
	            return false;
	}  
	if(Date=="")
	{
	            alert("Enter Date");
	            document.getElementById("Date").focus();
	            return false;
	}
	if(VehiclePhoto=="")
    {
		window.alert("Upload VEHICAL PHOTO");
       document.getElementById("VehiclePhoto").focus();
       return false;
    }
	if(Vehiclebill=="")
	{
	        window.alert("UPDATE VEHICAL BILL");
	        document.getElementById("Vehiclebill").focus();
	        return false;
	}
	if(policestation=="")
	{
	        window.alert("UPDATE policestation");
	        document.getElementById("policestation").focus();
	        return false;
	}
	
	if(EngineNo=="")
    {
            window.alert("Enter EngineNo");
            document.getElementById("EngineNo").focus();
           return false;
    }
	if(ChassisNo=="")
    {
            window.alert("Enter ChassisNo");
            document.getElementById("ChassisNo").focus();
           return false;
    }
	if(vehicletype=="")
     {
             window.alert("Enter vehicletype");
             document.getElementById("vehicletype").focus();
            return false;
     }
	if(VehicleCompany=="")
    {
            window.alert("Enter VehicleCompany");
            document.getElementById("VehicleCompany").focus();
           return false;
    }
	if(NumberPlate=="")
    {
            window.alert("Enter NumberPlate");
            document.getElementById("NumberPlate").focus();
           return false;
    }
	//validation for adhar
   
     
    if(PlaceofOccurance=="")
    {
        window.alert("UPDATE PLACE OF OCCURANCE");
        document.getElementById("PlaceofOccurance").focus();
        return false;
    }
    
    if(description=="")
    {
            alert("Enter Description");
            document.getElementById("description").focus();
           return false;
    } 
    else
    {
    	alert("successfully submitted");
    	document.getElementById("stolen").action="login1";
	    document.getElementById("stolen").submit();
        return true;
    }   
	//alert("wrong")
	//return false;
}
