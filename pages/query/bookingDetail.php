<?php 
require('connect.php');
$bookingId = $_GET['bookingId'];
$sql = "SELECT * FROM booking b INNER JOIN room r ON b.roomId = r.id WHERE b.id = '$bookingId'";
$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0){
$row['bookingDetailObj'] = mysqli_fetch_array($result,MYSQLI_ASSOC);
$row['bookingDetailObj']['food'] = unserialize($row['bookingDetailObj']['food']);
}

echo json_encode($row, JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>