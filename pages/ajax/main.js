$(document).ready(() => {
  showALlRoom();
  $("#footer").removeClass("fixed-bottom");
});

const showALlRoom = () => {
  $.ajax({
    type: "GET",
    url: "query/showAllRoom",
    success: function (response) {
      const { roomObj } = JSON.parse(response);
      let html = "";
      roomObj.forEach((element) => {
        let image = "";
        if (element.image == null || element.image == "") {
          image = "imageNotFound.jpg";
        } else {
          image = element.image;
        }

        html += `<div class="col-sm-12 col-md-8	col-lg-6	col-xl-4	col-xxl-3 mb-5">
                  <div class="card h-100" style="width: 18rem;" >
                    <img src="../assets/images/room/${image}" onclick="showImage('${image}','${element.name}')" class="card-img-top" alt="meetingRoom" style="cursor:pointer">
                    <div class="card-body">
                      <h5 class="card-title">${element.name}</h5>
                      <p class="card-text">${element.description}</p>
                    </div>
                    <div class="card-footer bg-transparent text-center">
                      <a href="booking?roomId=${element.id}" class="btn btn-success">จอง</a>`
        html+= `    </div>
                  </div>
                </div>`
      });
      $("#contentRoom").append(html)
    },
  });
};

const showImage = (img, imgName) => {
  if (img == "imageNotFound.jpg") return false;
  $("#imgRoom").attr("src", `../assets/images/room/${img}`);
  $("#modalImageLabel").text(imgName);
  $("#modalImage").modal("show");
};
