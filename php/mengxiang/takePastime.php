<?php 
$conn=new mysqli("localhost","root","123456","zhihuiyuan");
	$conn->query("set names utf8");
	$query="SELECT * FROM takePastime";
	$res=$conn->query($query);
	if($res->num_rows){
		$data=$res->fetch_all(MYSQLI_ASSOC);
		$data=json_encode($data);

		// return $data;
		echo $data;
	}
	$conn->close();
// localhost/zhihuiyuan/php/mengxiang/takePastime.php
 ?>