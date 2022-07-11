<?php 
require('connect.php');
$bookingId = $_GET['bookingId'];
$sql = "SELECT b.id AS bookingId,b.roomId,b.title,b.start,b.end,b.allDay,b.participants,b.departmentName,b.departmentTel,b.coordinatorName,b.coordinatorTel,b.formatId,b.food,b.comment,b.bookerName,b.bookerTel,b.bookerUser,b.status,r.name,r.image FROM booking b INNER JOIN room r ON b.roomId = r.id WHERE b.id = '$bookingId'";
$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0){
$row['bookingDetailObj'] = mysqli_fetch_array($result,MYSQLI_ASSOC);
$row['bookingDetailObj']['food'] = unserialize($row['bookingDetailObj']['food']);
}

echo json_encode($row, JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>