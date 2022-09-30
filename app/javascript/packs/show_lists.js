$( ".task-item" ).click(function( event ) {
  event.preventDefault();
  $( this ).parent().hide();
  // event.preventDefault();
  // $('#form_new_list').show();
});
