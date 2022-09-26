var lists = $('.kanban-col').toArray()
require(["dragula"], function(dragula){
  dragula(lists)
})

