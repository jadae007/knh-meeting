var selectedDate = ""
var selectedRoom = "";
$(document).ready(function () {
  var roomId = $("#roomId").val();
  showInfoRoom(roomId);
  showBooking(roomId);
  $("#optionFood").hide()
  $("#modalBooking").modal('show')


  $("#bookingForm").submit(function (e) { 
    e.preventDefault();
    console.log(selectedRoom,selectedDate);
  });

  $("#food1").change(function (e) { 
    e.preventDefault();
    $("#optionFood").hide()
  });

  $("#food2").change(function (e) { 
    e.preventDefault();
    $("#optionFood").show()
  });
});

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
  $("#calendar").children().remove()

  var calendar = new FullCalendar.Calendar(calendarEl, {
    height: 650,
    initialView: "dayGridMonth",
    locale:'th',
    editable: true,
    // displayEventEnd: true,
    eventSources: [
      {
        events,
        eventClick: (info) => {},
        borderColor: "blue",
      },
    ],
    dateClick: function (info) {
      checkBooking(`${roomId.value}`, `${info.dateStr}`);
      // alert("Clicked on: " + info.dateStr);
      // alert("Current view: " + info.view.type);
      // change the day's background color just for fun
    },
  });
  calendar.render();
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
      const { booked } = JSON.parse(response);
      console.log(booked);
      if (booked <= 2) {
        $("#modalBooking").modal("show");
        selectedDate = start;
        selectedRoom = roomId;
      } else {
        SoloAlert.alert({
          title:"ห้องประชุมนี้ถูกจองเต็มแล้ว",
          body:"ไม่สามารถจองได้ ห้องประชุมนี้ถูกจองเต็มแล้ว",
          icon: "error",
          useTransparency: true,
        });
      }
    },
  });
};

const bookMeeting = (roomId, start) =>{
console.log(roomId , start)
}