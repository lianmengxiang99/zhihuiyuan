<?php 
	$phoneNumber = $_POST['phonenumber'];
	$passWord = $_POST['password'];	

	$conn = new mysqli("localhost","root","123456","zhihuiyuan");
	$conn->query("set names utf8");
	$query = "SELECT * FROM register";
	$result = $conn->query($query);

	if($result->num_rows){	
		$data = $result->fetch_all(MYSQLI_ASSOC);
		if($data){
			echo 1;
		}
	}
	$conn->close();


 ?>

 