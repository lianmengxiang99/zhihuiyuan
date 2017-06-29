<?php 
function selectInfo($sql){
        $mysqli = new mysqli("localhost","root","123456","zhihuiyuan");
        $mysqli->query("set names utf8");
        $result = $mysqli->query($sql);
        #var_dump($result);
        //判断当前拿到的值不是0的情况下执行的
        if($result->num_rows){
            #第三种方法
            $row = $result->fetch_all(MYSQLI_ASSOC);
            //转化数组为json格式
            echo json_encode($row);
            #讲json转化为数组.
            // echo json_decode()
        }
    }
       
        $real_id = $_GET['Id'];
       
        $sql = "SELECT * FROM taskpark WHERE id= ".$real_id;
        selectInfo($sql);
 ?>