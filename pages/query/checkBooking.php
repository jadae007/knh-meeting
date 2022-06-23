<?php
$roomId = $_GET['roomId'];
$start = $_GET['start'];
require('connect.php');
$sql = "SELECT * FROM `booking` WHERE roomId = '$roomId' AND start like '$start%'";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode(array("booked"=>mysqli_num_rows($result),"detail"=>$rows),JSON_UNESCAPED_UNICODE);
mysqli_close($conn)
?>