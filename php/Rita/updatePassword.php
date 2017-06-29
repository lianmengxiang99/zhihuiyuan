
<?php 
	$phoneNumber = $_POST['phonenumber'];
	$passWord = $_POST['password'];	

	$conn = new mysqli("localhost","root","123456","zhihuiyuan");
	$conn->query("set names utf8");
	$query = "UPDATE register SET password = '$passWord' WHERE phoneNumber = '$phoneNumber'";
	$result = $conn->query($query);
	if($result){
		echo 1;
	}
	$conn->close();
 ?>

 		
