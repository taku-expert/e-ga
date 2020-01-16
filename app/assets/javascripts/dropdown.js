$( document ).on("turbolinks:load", function(){
  $(function() {
    $('#genre').hover(function() {
      $(this).find('ul').stop().slideDown();
    }, function() {
    $(this).find('ul').stop().slideUp();
    });
  });
});