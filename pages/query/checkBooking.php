<?php
$roomId = $_GET['roomId'];
$start = $_GET['start'];
require('connect.php');
$sql = "SELECT * FROM `booking` WHERE roomId = '1' AND start like '$start%'";
$result = mysqli_query($conn,$sql);
echo json_encode(array("booked"=>mysqli_num_rows($result)),JSON_UNESCAPED_UNICODE);
mysqli_close($conn)
?>