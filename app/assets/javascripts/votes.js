$('#topic').upvote();

var callback = function(data) {
    $.ajax({
        url: '/v1/upvote',
        type: 'post',
        data: { api_id: id }
    });
};
$('#topic-123').upvote({id: 123, callback: callback});

// function init(){
//   document.getElementById("upvote").addEventListener("click", upVote);
//   document.getElementById("downvote").addEventListener("click", downVote);
//   id = $("#api_id").val();
// };

// function upVote() {
//   var request = $.ajax({
//     method: "GET",
//     url: "/v1/upvote",
//     data: { api_id: id }
//   });

//   request.done(function(data) {
//     document.getElementById("upvote").textContent = data.upvotes;
//     document.getElementById("downvote").textContent = data.downvotes;
//   });
// }

// function downVote() {
//   var request = $.ajax({
//     method: "GET",
//     url: "/v1/downvote",
//     data: { api_id: id }
//   });

//   request.done(function(data) {
//     document.getElementById("upvote").textContent = data.upvotes;
//     document.getElementById("downvote").textContent = data.downvotes;
//   });
// }
