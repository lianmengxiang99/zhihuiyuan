<?php 
	$phoneNumber = $_POST['phonenumber'];
	$passWord = $_POST['password'];
	$conn = new mysqli("localhost","root","123456","zhihuiyuan");
	if($conn->connect_errno){
		die("Faild to connect MYSQL".$conn->connect_errno);
	}
	$conn->query("set names utf8");
	$query = "INSERT INTO register (phoneNumber,password) VALUES ($phoneNumber,$passWord)";
	$result = $conn->query($query);

	if($result){
		echo 1;
	}

 ?>