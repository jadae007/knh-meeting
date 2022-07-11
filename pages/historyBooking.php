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
            จองห้องไหนไว้บ้างนะ?
          </figcaption>
        </figure>
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

<?php require('components/modalBookingDetail.php') ?>

<script src="ajax/seeDetail.js"></script>
  <script src="ajax/historyBooking.js"></script>
</body>

</html>