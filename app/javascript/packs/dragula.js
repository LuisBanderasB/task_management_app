var lists = $('.list').toArray()
require(["dragula"], function(dragula){
  dragula(lists)
  .on('drop', function(el, target, source) {
    var task_id = el.id;
    var list_id = target.id;
    $.ajax({
      type: "PATCH",
      data: {
        authenticity_token: $('[name="csrf-token"]')[0].content, 
        task: {
          list: list_id,
          tite: name
        }
      },
      url: `/tasks/${task_id}`
    });
  });
})
