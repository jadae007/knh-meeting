<?php 
print_r($_POST);

$selectedDate = $_POST['selectedDate'];
$roomId = $_POST['roomId'];
(isset($_POST['morning'])) ? $morning = $_POST['morning'] : $morning="";
(isset($_POST['afterNoon'])) ? $afterNoon = $_POST['afterNoon'] : $afterNoon="";
(isset($_POST['evening'])) ? $evening = $_POST['evening'] : $evening="";
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

// if($morning != "" && $afterNoon !="" && $evening != ""){

// }
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

?>