<?php 
	$type = $_POST['type'];
	$name = $_POST['name'];
	$period	= $_POST['period'];
	$price = $_POST['price'];
	$people	= $_POST['people'];
	$tele = $_POST['tele'];
	$cons = $_POST['cons'];
	$timer = $_POST['time'];
	

	$conn = new mysqli("localhost","root","123456","zhihuiyuan");
	if($conn->connect_errno){
		die("Faild to connect MYSQL".$conn->connect_errno);
	}
	$conn->query("set names utf8");


	$query = "INSERT INTO renwuzb (type,name,period,price,people,tele,timer,cons) VALUES ('$type','$name','$period','$price','$people','$tele','$timer','$cons')";
	$result = $conn->query($query);

	if($result){
		echo 1;
	}
	
	
	$conn->close();










 ?>