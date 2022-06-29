<?php 
require('connect.php');
$name = trim($_POST['name']);
$description = trim($_POST['description']);


if(isset($_FILES['roomImg']['name'])){
	$filename = $_FILES['roomImg']['name'];
  $newName = $name.".jpg";
	$location = "../../assets/images/room/".$newName;
	$imageFileType = pathinfo($location,PATHINFO_EXTENSION);
	$imageFileType = strtolower($imageFileType);
	$valid_extensions = array("jpg",);

	if(in_array(strtolower($imageFileType), $valid_extensions)) {
    $sql = "INSERT INTO `room`(`name`, `description`, `image`) VALUES ('$name','$description','$newName')";
	   	if(move_uploaded_file($_FILES['roomImg']['tmp_name'],$location) && mysqli_query($conn,$sql)){
        echo json_encode(array("status"=>"true","message"=>"เพิ่มห้องประชุมเรียบร้อยแล้ว"),JSON_UNESCAPED_UNICODE);
      }else{
        echo json_encode(array("status"=>"false","message"=>"ไม่สามารถบันทึกข้อมูลได้"),JSON_UNESCAPED_UNICODE);
      }
    }else{
      echo json_encode(array("status"=>"false","message"=>"ประเภทไฟล์รูปภาพไม่ถูกต้อง"),JSON_UNESCAPED_UNICODE);
    }
  }else{
    echo json_encode(array("status"=>"false","message"=>"ไม่พบไฟล์รูปภาพหรือกรอกข้อมูลไม่ครบถ้วน"),JSON_UNESCAPED_UNICODE);
  }
  mysqli_close($conn);
?>