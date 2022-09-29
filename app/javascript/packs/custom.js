// $(function() {
//   $('#show').click(function(event){
//     event.preventDefault();
//     $('div.hidden').toggle();
//   });
// });   

document.querySelectorAll('a.add').forEach(occurence => {
  occurence.addEventListener('click', (e) => {
    let parentId = e.target.parentElement.id;
    let id = `form_${parentId.substring(parentId.indexOf('_') + 1)}`;

    event.preventDefault();
    $("div"+"#"+parentId+".hidden").toggle();
    $("div"+"#"+id+".hidden").toggle();
  });
});