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
            <td>${element.bookerName} ${element.bookerTel}</td>
            
          </tr>
          `);
        });
      }
      $("#tableBooked").DataTable({
        dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    });
    },
  });
};

