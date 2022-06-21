<?php 
require('connect.php');

$sql = "SELECT * FROM room";
$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0){
$rows['roomObj'] = mysqli_fetch_all($result,MYSQLI_ASSOC);
}else{
  $rows['roomObj'] = null;
}

echo json_encode($rows,JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>