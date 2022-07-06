<?php 
$roomId = trim($_POST['roomId']);
$name = trim($_POST['name']);
$description = trim($_POST['description']);
$status = "";
$message = "";
require('connect.php');

$sqlCheck = "SELECT `id`, `name`, `description`, `image` FROM `room` WHERE id='$roomId'";
$resultCheck = mysqli_query($conn,$sqlCheck);
if(mysqli_num_rows($resultCheck)==1){
  $rowCheck = mysqli_fetch_array($resultCheck,MYSQLI_ASSOC);
  $oldName = $rowCheck['image'];
  if(isset($_FILES['roomImg']['name']) && $_FILES['roomImg']['name'] != ""){
    $filename = $_FILES['roomImg']['name'];
    $newName = $name.".jpg";
    $location = "../../assets/images/room/".$newName;
    $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
    $imageFileType = strtolower($imageFileType);
    $valid_extensions = array("jpg",);
    if(in_array(strtolower($imageFileType), $valid_extensions)) {
    unlink("../../assets/images/room/".$oldName);
    move_uploaded_file($_FILES['roomImg']['tmp_name'],$location);
    $sql = "UPDATE `room` SET `name`='$name',`description`='$description',`image`='$newName' WHERE id='$roomId'";
    }else{
      $status = "false";
      $message = "ประเภทไฟล์รูปภาพไม่ถูกต้อง";
    }
  }else{
    $sql = "UPDATE `room` SET `name`='$name',`description`='$description' WHERE id='$roomId'";
  }
  if(mysqli_query($conn,$sql)){
    $status = "true";
    $message = "แก้ไขห้องประชุมเรียบร้อยแล้ว";
  }else{
    $status = "false";
    $message = mysqli_error($conn);
  }
}else{
  $status = "false";
  $message = "ไม่พบห้องประชุมนี้";
}
echo json_encode(array("status"=>$status,"message"=>$message),JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>