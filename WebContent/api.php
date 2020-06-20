<?php 

	/*
	* Created by Belal Khan
	* website: www.simplifiedcoding.net 
	* Retrieve Data From MySQL Database in Android
	*/
	
    $host = "localhost";
    $user = "root";
    $pwd = "";
    $db = "store";
	//database constants
	
	//connecting to database and getting the connection object
	$conn = mysqli_conncect($host,$user,$pwd,$db);
	
	
	//Checking if any error occured while connecting
	if(!conn)
	{
	    echo "error connection";
	}
	
	//creating a query
    $response = array();
    $sql = "select * from awomen";
    $result = mysqli_query($conn,$sql);
		
	
	
	 //traversing through all the result 
	 if(mysqli_num_rows($result)>0)
	 {
	     while ($row = mysqli_fetch_assoc($result)) {
	         array_push($response,$row);
	     }
	 }
	 else {
	     $response['done']= 0;
	 }
	// //displaying the result in json format 
	 echo json_encode($response);
	 mysqli_close();
	
?>
	