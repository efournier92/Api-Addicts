window.onload = init();

$('#topic').upvote();

var callback = function(data) {
    $.ajax({
        url: '/upvote',
        type: 'post',
        data: { id: data.id, up: data.upvoted, down: data.downvoted, star: data.starred }
    });
};

$('#topic-123').upvote({id: 123, callback: callback});

