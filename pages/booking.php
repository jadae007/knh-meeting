<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>KNH MEETING</title>
  <?php require_once('jsAndCss.php'); ?>
  <script src="ajax/booking.js"></script>
</head>

<body>
  <?php require_once('components/navbar.php') ?>
  <div class="container-fulid">
    <div class="row mt-3">
      <input type="hidden" id="roomId" value="<?php echo $_GET['roomId']; ?>">
      <div class="col-1">
      </div>
      <div class="col-10">
        <h2 id="roomName"></h2>
        <div id='calendar'></div>
      </div>
      <div class="col-1">
      </div>
    </div>
  </div>
</body>

</html>