$(document).ready(function () {
  var roomId = $("#roomId").val();
  showInfoRoom(roomId)
  const events = [
    {
      id: "a",
      title: "my event",
      start: "2022-06-21T10:30:00",
      end: "2022-06-21T12:30:00",
    },
    {
      id: "b",
      title: "ทดสอบ",
      start: "2022-06-21T12:30:00",
      end: "2022-06-21T14:30:00",
    },
    {
      id: "c",
      title: "ทดสอบ2",
      start: "2022-06-20T12:30:00",
      end: "2022-06-20T14:30:00",
    },
  ];
  const calendarEl = document.getElementById("calendar");

  var calendar = new FullCalendar.Calendar(calendarEl, {
    height: 650,
    initialView: "dayGridMonth",
    // editable: true,
    // displayEventEnd: true,
    eventSources: [
      {
        events,
        eventClick: (info) => {},
        borderColor: "blue",
      },
    ],
    dateClick: function (info) {
      alert("Clicked on: " + info.dateStr);
      alert("Current view: " + info.view.type);
      // change the day's background color just for fun
    },
  });
  calendar.render();
});


const showInfoRoom = (roomId) =>{
$.ajax({
  type: "GET",
  url: "query/showInfoRoom",
  data:{
    roomId,
  },

  success: function (response) {
    const { roomInfo } = JSON.parse(response)
    console.log(roomInfo);
    if(roomInfo!= null){

    }
  }
});
}