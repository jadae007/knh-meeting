$(document).ready(function () {
  const roomId = $("#roomId").val()
  showInfo(roomId)
  $("#formEditRoom").submit(function (e) { 
    e.preventDefault();
    let data = new FormData(e.target)
    $.ajax({
      type: "POST",
      enctype:"multipart/form-data",
      url: "query/editRoom",
      data,
      processData:false,
      contentType:false,
      cache:false,
      success: function (response) {
        const { status, message } = JSON.parse(response);
        if (status == "true") {
          SoloAlert.alert({
            title: "Success!!",
            body: message,
            icon: "success",
            useTransparency: true,
            onOk: () => {
              window.location.href = "main";
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
  });
});

const showInfo = (roomId) =>{
$.ajax({
  type: "GET",
  url: "query/showInfoRoom",
  data: {
    roomId,
  },
  success: function (response) {
    const detail = JSON.parse(response)
    $("#blockquote").text(`แก้ไข ${detail.name}`)
    $("#name").val(detail.name)
    $("#description").val(detail.description)
    $("#previewImage").html(`<img src="../assets/images/room/${detail.image}" class="rounded" id="previewImg" alt="..." style="max-width: 500px;">`)
  }
});
}

