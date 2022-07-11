<?php 
require('connect.php');
$userId = $_GET['userId'];
$sql = "SELECT b.id AS bookingId,b.roomId,b.title,b.start,b.end,b.allDay,b.participants,b.departmentName,b.departmentTel,b.coordinatorName,b.coordinatorTel,b.formatId,b.food,b.comment,b.bookerName,b.bookerTel,b.bookerUser,b.status,r.name FROM booking b INNER JOIN room r ON b.roomId = r.id WHERE bookerUser = '$userId' ORDER BY `b`.`start` DESC" ;
$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0){
  while ($r = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $r['food'] = unserialize($r['food']);
    $rows['historyBooking'][] = $r;
  }
}else{
  $rows['historyBooking'] = null;
}
echo json_encode($rows,JSON_UNESCAPED_UNICODE);
mysqli_close($conn);

?>