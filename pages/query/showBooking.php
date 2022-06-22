<?php 
require('connect.php');
$id = $_GET['roomId'];
$sql = "SELECT id,title,start,end FROM `booking` WHERE roomId = '$id' ORDER BY start ASC";
$sql2 = "SELECT * FROM `booking` WHERE roomId = '$id' ORDER BY start ASC";
$result =  mysqli_query($conn,$sql);
$resultInfo =  mysqli_query($conn,$sql2);


if(mysqli_num_rows($result)>0){
    $rows['BookingEvents'] = mysqli_fetch_all($result,MYSQLI_ASSOC);
    $rows['BookingInfo'] = mysqli_fetch_all($resultInfo,MYSQLI_ASSOC);
}else{
  
  $rows['BookingEvents'] = null;
  $rows['BookingInfo'] = null;
}
echo json_encode($rows,JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>