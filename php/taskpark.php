
<?php
  $mysqli=new mysqli("localhost","root","123456","zhihuiyuan");
 $mysqli->query('set names utf8');
 $query="SELECT *FROM taskpark";
 $result=$mysqli->query($query);
 if ($result->num_rows){
 	$data=$result->fetch_all(MYSQLI_ASSOC);
 	# code...
    echo json_encode($data);

 }
 $mysqli->close();
// /localhost/zhihuiyuan/php/taskpark.php
?>


	

