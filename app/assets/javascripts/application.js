//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(document).ready(init);

$(function() {
  $(document).foundation();
});

function init() {
  $(".alert-box").delay(5000).fadeOut('slow');
}

