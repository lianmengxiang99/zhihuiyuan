<?php 
	$ID = $_GET["id"];
	$type = $_POST['type'];
	$name = $_POST['name'];
	$period	= $_POST['period'];
	$price = $_POST['price'];
	$people	= $_POST['people'];
	$tele = $_POST['tele'];
	$cons = $_POST['cons'];
	$timer = $_POST['time'];
	

	$conn = new mysqli("localhost","root","123456","zhihuiyuan");
	$conn->query("set names utf8");
	$query = "UPDATE register SET type = '$type',name = '$name',period = '$period',price = '$price',people = '$people',tele = '$tele',cons = '$cons',timer = '$timer' WHERE id = '$ID'";
	$result = $conn->query($query);
	if($result){
		echo 1;
	}
	$conn->close();
 ?>