$(document).ready(() => {
  showALlRoom();
});

const showALlRoom = () =>{
  $.ajax({
    type: "GET",
    url: "query/showAllRoom",
    success: function (response) {
      const { roomObj } = JSON.parse(response);
      roomObj.forEach(element => {
       $("#contentRoom").append(`
       <div class="col-3 mb-4">
       <div class="card h-100" style="width: 18rem; cursor:pointer" >
         <img src="../assets/images/room/${element.image}" class="card-img-top" alt="...">
         <div class="card-body">
           <h5 class="card-title">${element.name}</h5>
           <p class="card-text">${element.description}</p>
           <a href="booking?roomId=${element.id}" class="btn btn-primary">จอง</a>
         </div>
       </div>
     </div>
       `)
      });
    }
  });
}