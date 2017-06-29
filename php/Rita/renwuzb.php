<?php 
	$ID = $_GET["ID"];
	$conn=new mysqli("localhost","root","123456","zhihuiyuan");
	$conn->query("set names utf8");
	$query="SELECT * FROM renwuzb WHERE id =".$ID;
	$res=$conn->query($query);
	if($res->num_rows){
		$data=$res->fetch_all(MYSQLI_ASSOC);
		$data=json_encode($data);
		echo $data;
	}
	$conn->close();

 ?>