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
    <div class="row mt-3">
      <div class="col-1">
      </div>
      <div class="col-10">
      <figure>
          <blockquote class="blockquote">
            <p>KNH-MEETING</p>
          </blockquote>
          <figcaption class="blockquote-footer">
           จองห้องประชุม
          </figcaption>
        </figure>
        <div class="row" id="contentRoom">

        </div>
      </div>
      <div class="col-1">
      </div>
    </div>
  </div>


  <!-- Modal -->
  <div class="modal fade" id="modalImage" tabindex="-1" aria-labelledby="modalImageLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalImageLabel"></h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body text-center">
          <img class="img-fluid" id="imgRoom" style="width:95%;" alt="...">
        </div>
      </div>
    </div>
  </div>
  <?php require('components/footer.php'); ?>
  <script src="ajax/main.js"></script>
</body>

</html>