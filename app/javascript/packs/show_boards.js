document.querySelectorAll('a.add').forEach(occurence => {
  occurence.addEventListener('click', (e) => {
    let parentId = e.target.parentElement.id;
    let id = `form_${parentId.substring(parentId.indexOf('_') + 1)}`;

    event.preventDefault();
    $("div"+"#"+parentId+".hidden").toggle();
    $("div"+"#"+id+".hidden").toggle();
  });
});


// Dragula functions
var lists = $('.list').toArray()
require(["dragula"], function(dragula){
  dragula(lists)
  .on('drop', function(el, target, source) {
    var task_id = el.id;
    var list_id = target.id;
    $.ajax({
      type: "PUT",
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
