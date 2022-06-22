<?php 
require('connect.php');
$roomId = $_GET['roomId'];

$sql = "SELECT * FROM room WHERE id = $roomId";
$result = mysqli_query($conn,$sql);

if(mysqli_num_rows($result)==1){
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
}else{
  $row = null;
}

echo json_encode($row,JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>