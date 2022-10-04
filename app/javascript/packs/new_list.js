$('#form_new_list').hide();

$( "#add_list_button" ).click(function( event ) {
  event.preventDefault();
  $( this ).parent().hide();
  event.preventDefault();
  $('#form_new_list').show();
});

$( "#close_form" ).click(function( event ) {
  event.preventDefault();
  $('#form_new_list').hide();
  event.preventDefault();
  $("#add_list_button").parent().show();
});
