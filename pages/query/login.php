<?php 
require_once('connect.php');
if(!empty($_POST)){
  $email = mysqli_real_escape_string($conn,trim($_POST['email']));
  $password = mysqli_real_escape_string($conn,$_POST['password']);
  $key = "knh-meeting";
  $hash_login_password = hash_hmac('sha256',$password,$key);
  $sql = "SELECT * FROM users WHERE email=? AND password=? AND active=1";
  $stmt = mysqli_prepare($conn,$sql);
  mysqli_stmt_bind_param($stmt,"ss",$email,$hash_login_password);
  mysqli_stmt_execute($stmt);
  $result_user = mysqli_stmt_get_result($stmt);
    if($result_user->num_rows == 1 ){
    session_start();
    $rowUser = mysqli_fetch_array($result_user,MYSQLI_ASSOC);
    $_SESSION['email'] = $rowUser['email'];
    $_SESSION['role'] = $rowUser['role'];
    $_SESSION['userId'] = $rowUser['id'];
    $_SESSION['department'] = $rowUser['department'];
    echo json_encode(array("status"=>true,"message"=>"login Success"),JSON_UNESCAPED_UNICODE);
  }else{
    echo json_encode(array("status"=>false,"message"=>"username หรือ password ไม่ถูกต้อง"),JSON_UNESCAPED_UNICODE);
}
}
mysqli_close($conn);
