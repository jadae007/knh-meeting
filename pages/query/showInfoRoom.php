<?php 
require('connect.php');
$roomId = $_GET['roomId'];
$sql = "SELECT * FROM room WHERE id = $roomId";
$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)==1){
$rows['roomInfo'] = mysqli_fetch_all($result,MYSQLI_ASSOC);
}else{
  $rows['roomInfo'] = null;
}

echo json_encode($rows,JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>