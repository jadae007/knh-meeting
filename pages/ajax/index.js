$(document).ready(function () {
  $("#loginForm").submit(function (e) { 
    e.preventDefault();
    let data = new FormData(e.target)
    $.ajax({
      type: "POST",
      enctype:"multipart/form-data",
      url: "query/login",
      data,
      contentType:false,
      processData:false,
      cache:false,
      success: function (response) {
        const { status , message } = JSON.parse(response);
        if(status) return window.location.href = "main";
          SoloAlert.alert({
            title: "Error!!",
            body: message,
            icon: "error",
            useTransparency: true,
          });
      }
    });
  });
});