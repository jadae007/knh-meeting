const seeDetail = (bookingId) => {
  $.ajax({
    type: "GET",
    url: "query/bookingDetail",
    data: {
      bookingId,
    },
    success: function (response) {
      $("#form")[0].reset();
      $("#format").children().remove();
      const { bookingDetailObj } = JSON.parse(response);
      console.log(bookingDetailObj);
      let format = Number(bookingDetailObj.formatId);

      if (bookingDetailObj.allDay == "1") {
        $("input:checkbox").prop("checked", true);
      } else {
        if (moment(bookingDetailObj.start).format("LT") == "8:30") {
          $("#morning").prop("checked", true);
        }
        if (moment(bookingDetailObj.start).format("LT") == "13:00") {
          $("#afterNoon").prop("checked", true);
        }
        if (moment(bookingDetailObj.start).format("LT") == "18:00") {
          $("#evening").prop("checked", true);
        }
      }
      $("#title").val(bookingDetailObj.title);
      $("#participants").val(bookingDetailObj.participants);
      $("#departmentName").val(bookingDetailObj.departmentName);
      $("#departmentTel").val(bookingDetailObj.departmentTel);
      $("#coordinatorName").val(bookingDetailObj.coordinatorName);
      $("#coordinatorTel").val(bookingDetailObj.coordinatorTel);
      $("#morningBreak").val(bookingDetailObj.food[0]);
      $("#lunch").val(bookingDetailObj.food[1]);
      $("#AfternoonBreak").val(bookingDetailObj.food[2]);
      $("#dinner").val(bookingDetailObj.food[3]);
      $("#format").append(`
      <option value="1" ${ format == 1 ? "selected" : false }>แบบแถวหน้ากระดาน</option>
      <option value="2" ${ format == 2 ? "selected" : false }>แบบนิเทศงาน</option>
      <option value="3" ${ format == 3 ? "selected" : false }>แบบทำกลุ่มกิจกรรม</option>
      <option value="4" ${ format == 4 ? "selected" : false }>แบบงานเลี้ยงกลางคืน</option>
      `);

      let reducer = bookingDetailObj.food.reduce((a, b) => Number(a) + Number(b));
      console.log(reducer)
      if (reducer == 0) {
        $("#food1").prop("checked", true);
      } else {
        $("#food2").prop("checked", true);
      }
      $("#comment").val(bookingDetailObj.comment);
      $("#bookerName").val(bookingDetailObj.bookerName);
      $("#bookerTel").val(bookingDetailObj.bookerTel);
      $("#modalBookingLabel").text('รายละเอียดการจอง'+bookingDetailObj.name + " " +moment(bookingDetailObj.start).format('LL'));
      $("#image").html(` <img src="../assets/images/room/${bookingDetailObj.image}" class="img-thumbnail"  alt="...">`)
      $("#modalFooter").html(`
      <button type="button" class="btn btn-danger" id="cancelBooking" onclick="cancelBooking(${bookingDetailObj.bookingId})">ยกเลิกการจอง</button>
      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      `)
    },
  });
  $("#modalBooking").modal("show");
};

const cancelBooking = (bookingId) =>{
  SoloAlert.confirm({
    title:"แน่ใจนะ?",
    body:"คุณต้องการยกเลิกการจองหรือไม่?",
    useTransparency: true,
    onOk:()=>{
    $.ajax({
      type: "POST",
      url: "query/cancelBooking",
      data: {
        bookingId
      },
      dataType: "json",
      success: function (response) {
       const { status , message } = response
       console.log(status)
      if (status == true) {
        SoloAlert.alert({
          title: "Success!!",
          body: message,
          icon: "success",
          useTransparency: true,
          onOk: () => {
            $("#modalBooking").modal("hide");
            location.reload();
          },
        });
      } else {
        SoloAlert.alert({
          title: "Error!!",
          body: message,
          icon: "error",
          useTransparency: true,
        });
      }
      }
    });
    }
  });
}