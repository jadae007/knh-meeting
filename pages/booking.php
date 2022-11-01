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
  <div class="container-fluid">
    <div class="row mt-3">
      <input type="hidden" id="roomId" value="<?php echo $_GET['roomId']; ?>">
      <input type="hidden" id="department" value="<?php echo $_SESSION['department']; ?>">
      <div class="col-1">
      </div>
      <div class="col-10">
        <h2 id="roomName"></h2>
        <div id='calendar' class="c"></div>
        <!-- <button type="button" class="btn btn-warning mt-4">กลับ</button> -->
        <a href="main" class="btn btn-warning mt-4">กลับ</a>
      </div>
      <div class="col-1">
      </div>
    </div>
  </div>


  <div class="modal fade" id="modalBooking" tabindex="-1" aria-labelledby="modalBookingLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <form method="post" id="bookingForm" enctype="multipart/form-data">
          <input type="hidden" name="selectedDate" id="selectedDate">
          <input type="hidden" name="selectedRoom" id="selectedRoom" value="<?php echo $_GET['roomId'] ?>">
          <div class="modal-header">
            <h5 class="modal-title" id="modalBookingLabel">จองห้องประชุม</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="mb-3">
              <h5>ช่วงเวลา</h5>
              <div class="form-check">
                <input class="form-check-input validateCheck" type="checkbox" value="morning" id="morning" name="morning">
                <label class="form-check-label" for="morning"> เช้า ตั้งแต่เวลา 8.30 น. ถึง เวลา 12.00 น.</label>
              </div>
              <div class="form-check">
                <input class="form-check-input validateCheck" type="checkbox" value="afterNoon" id="afterNoon" name="afterNoon">
                <label class="form-check-label" for="afterNoon"> บ่าย ตั้งแต่เวลา 13.00 น. ถึง เวลา 16.30 น.</label>
              </div>
              <div class="form-check">
                <input class="form-check-input validateCheck" type="checkbox" value="evening" id="evening" name="evening">
                <label class="form-check-label" for="evening"> เย็น ตั้งแต่เวลา 18.00 น. ถึง เวลา 23.00 น.</label>
              </div>
              <hr>
              <div class="mb-3 mt-3">
                <label for="title" class="form-label">เรื่องที่จัดประชุม/อบรม/สัมนา</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Title" required>
              </div>
              <div class="mb-3 mt-3">
                <label for="participants" class="form-label">จำนวนผู้เข้าร่วมประชุม/อบรม/สัมนา</label>
                <input type="number" class="form-control" id="participants" name="participants" placeholder="participants" required>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <label for="departmentName" class="form-label">หน่วยงานผู้จัด</label>
                <input type="text" class="form-control" id="departmentName" name="departmentName" required>
              </div>
              <div class="col-md-6">
                <label for="departmentTel" class="form-label">เบอร์โทร</label>
                <input type="text" maxlength="4" minlength="4" class="form-control" id="departmentTel" name="departmentTel" required>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <label for="coordinatorName" class="form-label">ผู้ประสานงาน</label>
                <input type="text" class="form-control" id="coordinatorName" name="coordinatorName" required>
              </div>
              <div class="col-md-6">
                <label for="coordinatorTel" class="form-label">เบอร์โทร</label>
                <input type="text" maxlength="10" minlength="10" class="form-control" id="coordinatorTel" name="coordinatorTel" required>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col-6">
                <label for="format" class="form-label">รูปแบบห้องประชุม</label>
                <select class="form-select" id="format" name="format" aria-label="Default select example">
                  <option value="1">แบบแถวหน้ากระดาน</option>
                  <option value="2">แบบนิเทศงาน</option>
                  <option value="3">แบบทำกลุ่มกิจกรรม</option>
                  <option value="4">แบบงานเลี้ยงกลางคืน</option>
                </select>
              </div>
              <div class="col-6">
                <label for="food" class="form-label">อาหารว่าง/อาหารกลางวัน/อาหารเย็น</label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="Food" id="food1" value="noFood" required>
                  <label class="form-check-label" for="food1">
                    ดำเนินการจัดหาเอง
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="Food" id="food2" value="needFood">
                  <label class="form-check-label" for="food2">
                    ขอสนันสนุนจากสวัสดิการโรงพยาบาลฯ
                  </label>
                </div>
              </div>
            </div>
            <div class="row mt-3" id="optionFood">
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารว่างเช้า</span>
                <input type="text" class="form-control" id="morningBreak" name="morningBreak">
                <span class="input-group-text">ที่</span>
              </div>
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารกลางวัน</span>
                <input type="text" class="form-control" id="lunch" name="lunch">
                <span class="input-group-text">ที่</span>
              </div>
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารว่างบ่าย</span>
                <input type="text" class="form-control" id="AfternoonBreak" name="AfternoonBreak">
                <span class="input-group-text">ที่</span>
              </div>
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารเย็น</span>
                <input type="text" class="form-control" id="dinner" name="dinner">
                <span class="input-group-text">ที่</span>
              </div>
            </div>
            <div class="mb-3 mt-3">
              <label for="participants" class="form-label">ข้อคิดเห็นของผู้รับบริการ</label>
              <textarea class="form-control" id="comment" name="comment"></textarea>
            </div>
            <div class="row">
              <h6>ผู้จองห้องประชุม</h6>
              <div class="form-check">
                <label class="form-check-label" for="checkBooker">
                  <input class="form-check-input" type="checkbox" value="chacked" id="checkBooker">
                  เหมือนกับผู้ประสาน
                </label>
              </div>
              <div class="col-md-6">
                <label for="bookerName" class="form-label">ลงชื่อ</label>
                <input type="text" class="form-control" id="bookerName" name="bookerName" required>
              </div>
              <div class="col-md-6">
                <label for="bookerTel" class="form-label">เบอร์โทร</label>
                <input type="text" maxlength="10" minlength="4" class="form-control" id="bookerTel" name="bookerTel" required>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" id="submitBooking" class="btn btn-primary">ยืนยันการจอง</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>

</html>