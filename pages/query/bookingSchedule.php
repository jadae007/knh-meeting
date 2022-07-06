<?php 
require('connect.php');
$start =  $_GET['start']." 00:00:00";
$end = $_GET['end']." 23:59:59";
$sql = "SELECT b.id AS bookingId,b.roomId,b.start,b.end,b.allDay,b.title,r.name,DATE(b.start) AS dateStart,TIME(b.start) AS timeStart FROM booking b INNER JOIN room r ON b.roomId = r.id
WHERE b.start BETWEEN '$start' AND '$end' ORDER BY dateStart ASC,timeStart ASC,b.roomId";

$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0){
  $rows['bookingScheduleObj'] = mysqli_fetch_all($result,MYSQLI_ASSOC);
}else{
  $rows['bookingScheduleObj'] = null;
}
echo json_encode($rows,JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>