<div class="modal fade" id="modalBooking" tabindex="-1" aria-labelledby="modalBookingLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalBookingLabel"></h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form id="form">
            <div class="mb-3">
              <div class="row">
                <div class="col-6">
                  <h5>ช่วงเวลา</h5>
                  <div class="form-check">
                <input class="form-check-input validateCheck" type="checkbox" value="morning" id="morning" name="morning" disabled>
                <label class="form-check-label" for="morning"> เช้า ตั้งแต่เวลา 8.30 น. ถึง เวลา 12.00 น.</label>
              </div>
              <div class="form-check">
                <input class="form-check-input validateCheck" type="checkbox" value="afterNoon" id="afterNoon" name="afterNoon" disabled>
                <label class="form-check-label" for="afterNoon"> บ่าย ตั้งแต่เวลา 13.00 น. ถึง เวลา 16.30 น.</label>
              </div>
              <div class="form-check">
                <input class="form-check-input validateCheck" type="checkbox" value="evening" id="evening" name="evening" disabled>
                <label class="form-check-label" for="evening"> เย็น ตั้งแต่เวลา 18.00 น. ถึง เวลา 23.00 น.</label>
              </div>
                </div>
                <div class="col-6" id="image">
               
                </div>
              </div>
           
              <hr>
              <div class="mb-3 mt-3">
                <label for="title" class="form-label">เรื่องที่จัดประชุม/อบรม/สัมนา</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Title" required readonly>
              </div>
              <div class="mb-3 mt-3">
                <label for="participants" class="form-label">จำนวนผู้เข้าร่วมประชุม/อบรม/สัมนา</label>
                <input type="number" class="form-control" id="participants" name="participants" placeholder="participants" required readonly>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <label for="departmentName" class="form-label">หน่วยงานผู้จัด</label>
                <input type="text" class="form-control" id="departmentName" name="departmentName" required readonly>
              </div>
              <div class="col-md-6">
                <label for="departmentTel" class="form-label">เบอร์โทร</label>
                <input type="text" maxlength="4" minlength="4" class="form-control" id="departmentTel" name="departmentTel" required readonly>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <label for="coordinatorName" class="form-label">ผู้ประสานงาน</label>
                <input type="text" class="form-control" id="coordinatorName" name="coordinatorName" required readonly>
              </div>
              <div class="col-md-6">
                <label for="coordinatorTel" class="form-label">เบอร์โทร</label>
                <input type="text" maxlength="10" minlength="10" class="form-control" id="coordinatorTel" name="coordinatorTel" readonly>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col-6">
                <label for="format" class="form-label">รูปแบบห้องประชุม</label>
                <select class="form-select" id="format" name="format" aria-label="Default select example" disabled>
              
                </select>
              </div>
              <div class="col-6">
                <label for="food" class="form-label">อาหารว่าง/อาหารกลางวัน/อาหารเย็น</label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="Food" id="food1" value="noFood" disabled>
                  <label class="form-check-label" for="food1">
                    ดำเนินการจัดหาเอง
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="Food" id="food2" value="needFood" disabled>
                  <label class="form-check-label" for="food2">
                    ขอสนันสนุนจากสวัสดิการโรงพยาบาลฯ
                  </label>
                </div>
              </div>
            </div>
            <div class="row mt-3" id="optionFood">
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารว่างเช้า</span>
                <input type="text" class="form-control" id="morningBreak" name="morningBreak" readonly>
                <span class="input-group-text">ที่</span>
              </div>
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารกลางวัน</span>
                <input type="text" class="form-control" id="lunch" name="lunch" readonly>
                <span class="input-group-text">ที่</span>
              </div>
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารว่างบ่าย</span>
                <input type="text" class="form-control" id="AfternoonBreak" name="AfternoonBreak" readonly>
                <span class="input-group-text">ที่</span>
              </div>
              <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">อาหารเย็น</span>
                <input type="text" class="form-control" id="dinner" name="dinner" readonly>
                <span class="input-group-text">ที่</span>
              </div>
            </div>
            <div class="mb-3 mt-3">
              <label for="participants" class="form-label">ข้อคิดเห็นของผู้รับบริการ</label>
              <textarea class="form-control" id="comment" name="comment" readonly></textarea>
            </div>
            <div class="row">
              <div class="col-md-6">
                <label for="bookerName" class="form-label">ผู้จองห้องประชุม</label>
                <input type="text" class="form-control" id="bookerName" name="bookerName" readonly>
              </div>
              <div class="col-md-6">
                <label for="bookerTel" class="form-label">เบอร์โทร</label>
                <input type="text" maxlength="10" minlength="4" class="form-control" id="bookerTel" name="bookerTel" readonly>
              </div>
            </div>
</form>
          </div>
          <div class="modal-footer" id="modalFooter">
            
            <!-- <button type="submit" id="submitBooking" class="btn btn-primary">ยืนยันการจอง</button> -->
          </div>
      </div>
    </div>
  </div>