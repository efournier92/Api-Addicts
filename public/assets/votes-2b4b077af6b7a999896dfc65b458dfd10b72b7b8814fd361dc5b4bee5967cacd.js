window.onload = init();

$('#topic').upvote();
$('#topic').upvote({count: 5, upvoted: 1});
$('#topic').upvote({count: 5, downvoted: 1});
$('#topic').upvote({count: 5, upvoted: 1, starred: 1});

var callback = function(data) {
    $.ajax({
        url: '/vote',
        type: 'post',
        data: { id: data.id, up: data.upvoted, down: data.downvoted, star: data.starred }
    });
};
$('#topic-123').upvote({id: 123, callback: callback});

var id;

function init(){
  document.getElementById("upvote").addEventListener("click", upVote);
  document.getElementById("downvote").addEventListener("click", downVote);
  id = $("#api_id").val();
}

function upVote() {
  var request = $.ajax({
    method: "GET",
    url: "/v1/upvote",
    data: { api_id: id }
  });

  request.done(function(data) {
    document.getElementById("upvote").textContent = data.upvotes;
    document.getElementById("downvote").textContent = data.downvotes;
  });
}

function downVote() {
  var request = $.ajax({
    method: "GET",
    url: "/v1/downvote",
    data: { api_id: id }
  });

  request.done(function(data) {
    document.getElementById("upvote").textContent = data.upvotes;
    document.getElementById("downvote").textContent = data.downvotes;
  });
}
