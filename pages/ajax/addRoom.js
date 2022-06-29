$(document).ready(function () {
  $("#navAddRoom").addClass("active");
  $("#roomImg").change(function (e) {
    e.preventDefault();
    if ($(this).val() != "") return preview(e);
    $("#previewImg").attr("src", "../assets/images/previewImage.jpg");
  });

  $("#formAddRoom").submit(function (e) {
    e.preventDefault();
    let data = new FormData(e.target);
    let inputArray = [];
    inputArray.push(e.target.name.value.trim());
    inputArray.push(e.target.description.value.trim());
    inputArray.push(e.target.roomImg.value.trim());
    let input = $(".inputform");
    inputArray.forEach((element, index) => {
      if (Boolean(element.trim())) {
        input[index].classList.remove("is-invalid");
      } else {
        input[index].classList.add("is-invalid");
      }
    });
    if(e.target.roomImg.value.trim().includes(".jpg")){
      if (!inputArray.includes("")) return addRoom(data);
    }else{
      input[2].classList.add("is-invalid");
    }
  });
});

$(".inputform").keyup(function (e) {
  if (Boolean(e.currentTarget.value.trim()))
    return e.currentTarget.classList.remove("is-invalid");
  e.currentTarget.classList.add("is-invalid");
});

$("#roomImg").change(function (e) {
  e.preventDefault();
  if (e.currentTarget.value.trim().includes(".jpg")) {
    if (Boolean(e.currentTarget.value.trim()))
      return e.currentTarget.classList.remove("is-invalid");
  } else {
    e.currentTarget.classList.add("is-invalid");
  }
});
const addRoom = (data) => {
  $.ajax({
    type: "POST",
    enctype: "multipart/form-data",
    url: "query/addRoom",
    data,
    contentType: false,
    processData: false,
    cache: false,
    success: function (response) {
      const { status, message } = JSON.parse(response);
      if (status == "true") {
        SoloAlert.alert({
          title: "จองห้องประชุมเรียบร้อยแล้ว",
          body: message,
          icon: "success",
          useTransparency: true,
          onOk: () => {
            window.location.href = "main";
          },
        });
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
};

function preview(event) {
  previewImg.src = URL.createObjectURL(event.target.files[0]);
}
