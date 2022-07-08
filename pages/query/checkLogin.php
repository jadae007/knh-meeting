<?php
session_start();
if(!isset($_SESSION['email'])){
  header("Location:/");
}else{
    $s_email = $_SESSION['email'];
    $s_userId = $_SESSION['userId'];
    $s_role = $_SESSION['role'];
}

