var selectedDate = "";
$(document).ready(function () {
  var roomId = $("#roomId").val();
  showInfoRoom(roomId);
  showBooking(roomId);
  $("#optionFood").hide();
  // $("#modalBooking").modal("show");

  $("#bookingForm").submit(function (e) {
    e.preventDefault();
    let data = new FormData(e.target);
    if (checkBoxChecker()) {
      $(".validateCheck").removeClass("is-invalid");
      $.ajax({
        type: "POST",
        enctype: "multipart/form-data",
        url: "query/booking",
        data,
        contentType: false,
        cache: false,
        processData: false,
        success: function (response) {
          const { status, message } = JSON.parse(response);
          if (status == "true") {
            SoloAlert.alert({
              title: "จองห้องประชุมเรียบร้อยแล้ว",
              body: message,
              icon: "success",
              useTransparency: true,
              onOk:()=>{
                $("#modalBooking").modal("hide");
                $("#optionFood").hide();
              }
            });
            showBooking(roomId)
          } else {
            SoloAlert.alert({
              title: "ไม่สามารถจองห้องประชุมได้",
              body: message,
              icon: "error",
              useTransparency: true,
            });
          }
        },
      });
    } else {
      $(".validateCheck").addClass("is-invalid");
    }
  });

  $("#modalBooking").on("hidden.bs.modal", function () {
    $("#morning").attr("disabled", false);
    $("#afterNoon").attr("disabled", false);
    $("#evening").attr("disabled", false);
  });

  $("#food1").change(function (e) {
    e.preventDefault();
    $("#optionFood").hide();
  });

  $("#food2").change(function (e) {
    e.preventDefault();
    $("#optionFood").show();
  });

  $("#checkBooker").change(function (e) {
    e.preventDefault();
    let coordinatorName = $("#coordinatorName").val();
    let coordinatorTel = $("#coordinatorTel").val();
    if ($("#checkBooker").is(":checked")) {
      $("#bookerName").val(coordinatorName);
      $("#bookerTel").val(coordinatorTel);
    } else {
      $("#bookerName").val("");
      $("#bookerTel").val("");
    }
  });
  $(".validateCheck").change(function (e) {
    e.preventDefault();
    if (checkBoxChecker()) return $(".validateCheck").removeClass("is-invalid");
  });
});

const checkBoxChecker = () => {
  let detail = document.querySelectorAll(".validateCheck");
  return Array.prototype.slice.call(detail).some((x) => x.checked);
};

const showInfoRoom = (roomId) => {
  $.ajax({
    type: "GET",
    url: "query/showInfoRoom",
    data: {
      roomId,
    },
    success: function (response) {
      if (response != "null") {
        const { id, name, description, image } = JSON.parse(response);
        $("#roomName").text("ตารางการจอง" + name);
      }
    },
  });
};

const showBooking = (roomId) => {
  $.ajax({
    type: "GET",
    url: "query/showBooking",
    data: {
      roomId,
    },
    success: function (response) {
      const { BookingEvents, BookingInfo } = JSON.parse(response);
      createCalendar(BookingEvents);
    },
  });
};

const createCalendar = (events) => {
  const calendarEl = document.getElementById("calendar");
  $("#calendar").children().remove();
  var calendar = new FullCalendar.Calendar(calendarEl, {
    height: 650,
    initialView: "dayGridMonth",
    locale: "th",
    editable: true,
    // displayEventEnd: true,
    eventSources: [
      {
        events,
        borderColor: "blue",
      },
    ],
    eventClick: function(info) {
     console.log(info.event)
    },
    dateClick: function (info) {
      checkBooking(`${roomId.value}`, `${info.dateStr}`);
      // alert("Clicked on: " + info.dateStr);
      // alert("Current view: " + info.view.type);
      // change the day's background color just for fun
    },
  });
  calendar.render();
};
const checkAllDay = (detail) => {
  return Array.prototype.slice.call(detail).some((x) => x.allDay == "1");
};
const checkBooking = (roomId, start) => {
  $.ajax({
    type: "GET",
    url: "query/checkBooking",
    data: {
      roomId,
      start,
    },
    success: function (response) {
      const { booked, detail } = JSON.parse(response);
      if (!checkAllDay(detail)) {
        if (booked <= 2) {
          detail.forEach((element) => {
            let array = element.start.split(" ");
            let booked1 = array[1];
            if (element.allDay == "1") return 1;
            if (booked1 == "08:30:00") {
              $("#morning").attr("disabled", true);
            }
            if (booked1 == "13:00:00") {
              $("#afterNoon").attr("disabled", true);
            }
            if (booked1 == "18:00:00") {
              $("#evening").attr("disabled", true);
            }
          });
          $(".validateCheck").removeClass("is-invalid");
          $("#bookingForm")[0].reset();
          $("#modalBooking").modal("show");
          $("#selectedDate").val(start);
          $("#selectedRoom").val(roomId);
        } else {
          SoloAlert.alert({
            title: "ห้องประชุมนี้ถูกจองเต็มแล้ว",
            body: "ไม่สามารถจองได้ ห้องประชุมนี้ถูกจองเต็มแล้ว",
            icon: "error",
            useTransparency: true,
          });
        }
      } else {
        SoloAlert.alert({
          title: "ห้องประชุมนี้ถูกจองเต็มแล้ว",
          body: "ไม่สามารถจองได้ ห้องประชุมนี้ถูกจองเต็มแล้ว",
          icon: "error",
          useTransparency: true,
        });
      }
    },
  });
};
