$(function() {
  $('#show_whatever').click(function(event){
    event.preventDefault();
    $('div.hidden').toggle();
  });
});   
