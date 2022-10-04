import Rails from "@rails/ujs"

const exampleModal = document.getElementById('modalContainer')
exampleModal.addEventListener('show.bs.modal', event => {
  const button = event.relatedTarget
  const recipient = button.getAttribute('data-bs-whatever')


  Rails.ajax({
    url: "/tasks",
    type: "GET",
    data: "",
    success: function(data) { 
      console.log("funciona")
    },
    error: function(data){
      console.log(data)
    }
  })

  const modalTitle = exampleModal.querySelector('.modal-title')
  const modalBodyInput = exampleModal.querySelector('.modal-body input')

  modalTitle.textContent = `New message to ${recipient}`
  modalBodyInput.value = recipient
})