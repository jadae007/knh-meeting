<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv='cache-control' content='no-cache'>
  <meta http-equiv='expires' content='0'>
  <meta http-equiv='pragma' content='no-cache'>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KNH MEETING</title>
  <?php require_once('jsAndCss.php'); ?>
</head>

<body>
  <?php require_once('components/navbar.php') ?>
  <div class="container-fluid">
    <div class="row mt-4">
      <div class="col-1"></div>
      <div class="col-10">
        <figure>
          <blockquote class="blockquote">
            <p>KNH-MEETING</p>
          </blockquote>
          <figcaption class="blockquote-footer">
            ตารางการจองห้องประชุม
          </figcaption>
        </figure>
        <div class="row mt-5 mb-5">
          <div class="col-6">
            <div class="input-group mb-3">
            <span class="input-group-text">ตั้งแต่วันที่</span>
              <input type="date" class="form-control" id="start" value="<?php echo date("Y-m-d"); ?>" aria-label="Start Date" >
              <span class="input-group-text">ถึง</span>
              <input type="date" class="form-control" id="end" value="<?php echo date("Y-m-d"); ?>" aria-label="End Date" >
              <button class="btn btn-outline-secondary" type="button" id="submit">Submit</button>
            </div>
          </div>
        </div>
        <div class="card p-4">
          <table class="table table-hover" id="tableBooked">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">ชื่อห้องประชุม</th>
                <th scope="col">วัน เวลา ที่เริ่ม</th>
                <th scope="col">วัน เวลา สิ้นสุด</th>
                <th scope="col">ช่วงเวลา</th>
              </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  <?php require('components/modalBookingDetail.php'); ?> 
  <script src="ajax/seeDetail.js"></script>
  <script src="ajax/bookingSchedule.js"></script>
</body>

</html>