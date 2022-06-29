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
      <div class="col-5">
        <figure>
          <blockquote class="blockquote">
            <p>KNH-MEETING</p>
          </blockquote>
          <figcaption class="blockquote-footer">
            เพิ่มห้องประชุม
          </figcaption>
        </figure>
        <form method="post" enctype="multipart/form-data" id="formAddRoom">
          <div class="form-floating mb-3">
            <input type="text" class="form-control inputform" minlength="1" maxlength="100" id="name" name="name" placeholder="ชื่อห้องประชุม">
            <label for="name">ชื่อห้องประชุม</label>
            <div class="invalid-feedback">
            โปรดกรอกชื่อห้องประชุม
            </div>
          </div>
          <div class="form-floating">
            <textarea class="form-control inputform " placeholder="รายละเอียดห้องประชุม" minlength="1" maxlength="255" id="description" name="description" style="min-height: 100px"></textarea>
            <label for="description">รายละเอียดห้องประชุม</label>
            <div class="invalid-feedback">
            โปรดกรอกรายละเอียดห้องประชุม
            </div>
          </div>
          <div style="margin-top: 1em;">
            <label for="roomImg" class="form-label">อัพโหลดรูปภาพห้องประชุม</label>
            <input class="form-control form-control-lg inputform" id="roomImg" name="roomImg" type="file">
            <div class="invalid-feedback">
            โปรดอัพโหลดรูปภาพห้องประชุม **ไฟล์ .jpg เท่านั้น
            </div>
          </div>
          <div class="text-end mt-3">
            <button type="submit" class="btn btn-success btn-lg">บันทึก</button>
          </div>
        </form>
      </div>
      <div class="col">
        <div class="row m-5">
          <div class="text-center">
            <img src="../assets/images/previewImage.jpg" class="rounded" id="previewImg" alt="..." style="max-width: 500px;">
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php require('components/footer.php'); ?>
  <script src="ajax/addRoom.js"></script>
</body>

</html>