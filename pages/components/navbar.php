<?php require_once('query/checkLogin.php'); ?>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #23374D;">
  <div class="container-fluid">
    <input type="hidden" name="userRole" id="userRole" value="<?php echo $s_role; ?>">
    <input type="hidden" name="userId" id="userId" value="<?php echo $s_userId ; ?>">
    <a class="navbar-brand" href="main">KNH Meeting</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <?php if($s_role == 0){?>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="addRoom" id="navAddRoom">เพิ่มห้องประชุม</a>
        </li> 
       
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="bookingSchedule" id="navBookingSchedule">ตารางการจองห้องประชุม</a>
        </li> 
        <?php }  ?>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="historyBooking" id="navhistoryBooking">การของของฉัน</a>
        </li> 
         <!-- <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->
      </ul>
      <div class="d-flex">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" style="margin-right: 1em ;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <?php echo $s_email; ?>
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="query/logout">ออกจากระบบ</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>


