<?php
require('connect.php');
$id = $_GET['roomId'];
$sql = "SELECT id,title,start,end,allDay FROM `booking` WHERE roomId = '$id' ORDER BY start ASC";
$sql2 = "SELECT * FROM `booking` WHERE roomId = '$id' ORDER BY start ASC";
$result =  mysqli_query($conn, $sql);
$resultInfo =  mysqli_query($conn, $sql2);


if (mysqli_num_rows($result) > 0) {
  while ($r = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    if ($r['allDay'] == "0") {
      $r['allDay']  = false;
    } else {
      $r['allDay']  = true;
    }
    $rows['BookingEvents'][] = $r;
  }
  // $rows['BookingEvents'] = mysqli_fetch_all($result, MYSQLI_ASSOC);
  $rows['BookingInfo'] = mysqli_fetch_all($resultInfo, MYSQLI_ASSOC);
} else {

  $rows['BookingEvents'] = null;
  $rows['BookingInfo'] = null;
}
echo json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>