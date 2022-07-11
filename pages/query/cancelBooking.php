<?php 
$bookingId = $_POST['bookingId'];

require('connect.php');
$sqlCheck = "SELECT id FROM booking WHERE id = '$bookingId'";
$resultCheck = mysqli_query($conn,$sqlCheck);
$status = "";
$message = "";
if(mysqli_num_rows($resultCheck)==1){
  $sql = "DELETE FROM booking WHERE id = '$bookingId'";
  if(mysqli_query($conn,$sql)){
    $status = true;
    $message = "ยกเลิกการจองเรียบร้อยแล้ว";
  }else{
    $status = false;
    $message = mysqli_error($conn);
  }
}else{
  $status = false;
  $message = "ไม่พบการจองนี้ในระบบ";
}
echo json_encode(array("status"=>$status,"message"=>$message),JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>