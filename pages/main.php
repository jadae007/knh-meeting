<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>KNH MEETING</title>
  <?php require_once('jsAndCss.php'); ?>
  <script>

const events = [
  {
      id: 'a',
      title: 'my event',
      start: '2022-06-21T10:30:00',
          end: '2022-06-21T12:30:00'
    }
]
$(document).ready(function () {
  const calendarEl = document.getElementById('calendar');
  console.log(calendarEl)
  var calendar = new FullCalendar.Calendar(calendarEl, {
    initialView: 'dayGridMonth',
    events
  });
  console.log(calendar)
  calendar.render();
});



</script>
</script>
</head>
<body>
  <?php require_once('components/navbar.php') ?> 
  <div class="container-fulid">
  <div class="row mt-3">
    <div class="col-1">
    </div>
    <div class="col-10">
    <h2>เลือกห้องประชุม</h2>
    <div id='calendar'></div>
    </div>
    <div class="col-1">
    </div>
  </div>
</div>
</body>
</html>