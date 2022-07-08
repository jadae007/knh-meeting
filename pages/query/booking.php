<?php 
session_start();
require('connect.php');
$selectedDate = $_POST['selectedDate'];
$roomId = $_POST['selectedRoom'];
$userId = $_SESSION['userId'];

if(isset($_POST['morning'])){
  $morning = $_POST['morning'];
}else{
  $morning = "";
}

if(isset($_POST['afterNoon'])){
  $afterNoon = $_POST['afterNoon'];
}else{
  $afterNoon = "";
}

if(isset($_POST['evening'])){
  $evening = $_POST['evening'];
}else {
  $evening = "";
}
  
$title = $_POST['title'];
$participants = $_POST['participants'];
$departmentName = $_POST['departmentName'];
$departmentTel = $_POST['departmentTel'];
$coordinatorName = $_POST['coordinatorName'];
$coordinatorTel = $_POST['coordinatorTel'];
$format = $_POST['format'];
$Food = $_POST['Food'];
$morningBreak = $_POST['morningBreak'];
$lunch = $_POST['lunch'];
$AfternoonBreak = $_POST['AfternoonBreak'];
$dinner = $_POST['dinner'];
$comment = $_POST['comment'];
$bookerName = $_POST['bookerName'];
$bookerTel = $_POST['bookerTel'];

$bookingStatus = "true";

if($Food = "needFood"){
  $arrayFood = [];
(!empty($morningBreak))? array_push($arrayFood,$morningBreak) : array_push($arrayFood,0);
(!empty($lunch))? array_push($arrayFood,$lunch) : array_push($arrayFood,0);
(!empty($AfternoonBreak))? array_push($arrayFood,$AfternoonBreak) : array_push($arrayFood,0);
(!empty($dinner))? array_push($arrayFood,$dinner) : array_push($arrayFood,0);
}else{
  $arrayFood = [0,0,0,0];
}
$stringFood = serialize($arrayFood);

if($morning != "" && $afterNoon !="" && $evening != ""){
  $endAllDay = $selectedDate . " 23:00:00";
  $startAllDay  = $selectedDate ." 08:00:00";
  
  $sql = "INSERT INTO
  `booking`(
      `roomId`,
      `title`,
      `start`,
      `end`,
      `allDay`,
      `participants`,
      `departmentName`,
      `departmentTel`,
      `coordinatorName`,
      `coordinatorTel`,
      `formatId`,
      `food`,
      `comment`,
      `bookerName`,
      `bookerTel`,
      `bookerUser`,
      `status`
  )
  VALUES (
      '$roomId',
      '$title',
      '$startAllDay ',
      '$endAllDay ',
      '1',
      '$participants',
      '$departmentName',
      '$departmentTel',
      '$coordinatorName',
      '$coordinatorTel',
      '$format',
      '$stringFood',
      '$comment',
      '$bookerName',
      '$bookerTel',
      '$userId',
      '1'
  )";
 if(mysqli_query($conn,$sql)){
   $message = "จองสำเร็จ";
  }else{
    $message = mysqli_error($conn);
    $bookingStatus = "false";
  }

}else{
  if($morning != ""){
    $start =  $selectedDate . " " . "08:30:00";
    $end = $selectedDate . " " . "12:00:00";
    $sql = "INSERT INTO
    `booking`(
        `roomId`,
        `title`,
        `start`,
        `end`,
        `allDay`,
        `participants`,
        `departmentName`,
        `departmentTel`,
        `coordinatorName`,
        `coordinatorTel`,
        `formatId`,
        `food`,
        `comment`,
        `bookerName`,
        `bookerTel`,
        `bookerUser`,
        `status`
    )
    VALUES (
        '$roomId',
        '$title',
        '$start',
        '$end',
        '0',
        '$participants',
        '$departmentName',
        '$departmentTel',
        '$coordinatorName',
        '$coordinatorTel',
        '$format',
        '$stringFood',
        '$comment',
        '$bookerName',
        '$bookerTel',
        '$userId',
        '1'
    )";
    if(mysqli_query($conn,$sql)){
      $message = "จองสำเร็จ";
     }else{
       $message = mysqli_error($conn);
       $bookingStatus = "false";
     }
  }
  if($afterNoon != ""){
    $start =  $selectedDate . " " . "13:00:00";
    $end = $selectedDate . " " . "16:30:00";
    $sql = "INSERT INTO
    `booking`(
        `roomId`,
        `title`,
        `start`,
        `end`,
        `allDay`,
        `participants`,
        `departmentName`,
        `departmentTel`,
        `coordinatorName`,
        `coordinatorTel`,
        `formatId`,
        `food`,
        `comment`,
        `bookerName`,
        `bookerTel`,
        `bookerUser`,
        `status`
    )
    VALUES (
        '$roomId',
        '$title',
        '$start',
        '$end',
        '0',
        '$participants',
        '$departmentName',
        '$departmentTel',
        '$coordinatorName',
        '$coordinatorTel',
        '$format',
        '$stringFood',
        '$comment',
        '$bookerName',
        '$bookerTel',
        '$userId',
        '1'
    )";
    if(mysqli_query($conn,$sql)){
      $message = "จองสำเร็จ";
     }else{
       $message = mysqli_error($conn);
       $bookingStatus = "false";
     }
  }
  if($evening != ""){
    $start =  $selectedDate . " " . "18:00:00";
    $end = $selectedDate . " " . "23:00:00";
    $sql = "INSERT INTO
    `booking`(
        `roomId`,
        `title`,
        `start`,
        `end`,
        `allDay`,
        `participants`,
        `departmentName`,
        `departmentTel`,
        `coordinatorName`,
        `coordinatorTel`,
        `formatId`,
        `food`,
        `comment`,
        `bookerName`,
        `bookerTel`,
        `bookerUser`,
        `status`
    )
    VALUES (
        '$roomId',
        '$title',
        '$start',
        '$end',
        '0',
        '$participants',
        '$departmentName',
        '$departmentTel',
        '$coordinatorName',
        '$coordinatorTel',
        '$format',
        '$stringFood',
        '$comment',
        '$bookerName',
        '$bookerTel',
        '$userId',
        '1'
    )";
    if(mysqli_query($conn,$sql)){
      $message = "จองสำเร็จ";
     }else{
       $message = mysqli_error($conn);
       $bookingStatus = "false";
     }
  }
}

echo json_encode(array("status"=>$bookingStatus,"message"=>$message),JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>