$(document).ready( function() {

  $(".button").mouseenter( function() {
    $(this).fadeTo("fast", 1);
  });

  $(".button").mouseleave( function() {
    $(this).fadeTo("fast", .7);
  });

  $(".button").on("click", function() {
    $(this).css("background-color", "red").delay(3000);
  });
  
});