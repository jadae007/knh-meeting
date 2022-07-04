$(document).ready(function () {
  showBooked();

});

const showBooked = (start,end) => {
  $.ajax({
    type: "GET",
    url: "query/BookingSchedule",
    data: {
      start: "2022-06-21",
      end: "2022-07-30",
    },
    success: function (response) {
      const { bookingScheduleObj } = JSON.parse(response);
      console.log(bookingScheduleObj);
      $("#tableBooked").DataTable().destroy();
      if (!!bookingScheduleObj) {
        bookingScheduleObj.forEach((element,index) => {
          $("#tbody").append(`
          <tr>
            <th scope="row">${++index}</th>
            <td>${element.name}</td>
            <td>${element.start}</td>
            <td>${moment(element.end).format('LLLL')}</td>
          </tr>
          `)
        });
      }
      $("#tableBooked").DataTable();
    },
  });
};
