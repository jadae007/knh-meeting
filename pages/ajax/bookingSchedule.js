$(document).ready(function () {
  let start = $("#start").val();
  let end = $("#end").val();
  showBooked(start, end);

  $("#submit").click(function (e) {
    e.preventDefault();
    let start = $("#start").val();
    let end = $("#end").val();
    showBooked(start, end);
  });
});

const showBooked = (start, end) => {
  $.ajax({
    type: "GET",
    url: "query/BookingSchedule",
    data: {
      start,
      end,
    },
    success: function (response) {
      const { bookingScheduleObj } = JSON.parse(response);
      console.log(bookingScheduleObj)
      $("#tableBooked").DataTable().destroy();
      $("#tbody").children().remove();
      if (!!bookingScheduleObj) {
        bookingScheduleObj.forEach((element, index) => {
          let period = element.allDay == "1" ? "ทั้งวัน" : false;
          if (!Boolean(period)) {
            if (moment(element.start).format("LT") == "8:30") {
              period = "เช้า";
            } else if (moment(element.start).format("LT") == "13:00") {
              period = "บ่าย";
            } else {
              period = "เย็น";
            }
          }
          $("#tbody").append(`
          <tr style="cursor:pointer;" onclick="seeDetail(${element.bookingId})">
            <th scope="row">${++index}</th>
            <td>${element.name}</td>
            <td data-order=${moment(element.start).format("x")}>${moment(
            element.start
          ).format("LLLL")}</td>
            <td data-order=${moment(element.end).format("x")}>${moment(
            element.end
          ).format("LLLL")}</td>
            <td>${period}</td>
            
          </tr>
          `);
        });
      }
      $("#tableBooked").DataTable();
    },
  });
};

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
    },
  });
  $("#modalBooking").modal("show");
};
