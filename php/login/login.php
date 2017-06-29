<?php 


	$phoneNumber = $_POST['phonenumber'];
	$passWord = $_POST['password'];	
	$conn = new mysqli("localhost","root","123456","zhihuiyuan");
	if($conn->connect_errno){
		die("Faild to connect MYSQL".$conn->connect_errno);
	}
	$conn->query("set names utf8");
	$query = "SELECT * FROM register";
	$result = $conn->query($query);


	$temp = "";
	if($result->num_rows){
		
		$data = $result->fetch_all(MYSQLI_ASSOC);
		// $res = json_encode($data);

		foreach ($data as $msg) {
			if($msg['phoneNumber']==$phoneNumber){
				if($msg['password']== $passWord){
					$temp = 1;
				}
			}
		}	
	}
	echo $temp == 1?1:0;

 ?>