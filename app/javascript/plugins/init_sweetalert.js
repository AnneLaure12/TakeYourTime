import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
  }
};

// document.getElementById('submit-button').addEventListener('click', (event) => {

//     event.preventDefault();
//     event.target.form.submit();
//     // var form = $(this).parents('form');
//     // swal({
//     //     title: "Are you sure?",
//     //     text: "You will not be able to recover this imaginary file!",
//     //     type: "warning",
//     //     showCancelButton: true,
//     //     confirmButtonColor: "#DD6B55",
//     //     confirmButtonText: "Yes, delete it!",
//     //     closeOnConfirm: false
//     // }, function(isConfirm){
//     //     if (isConfirm) form.submit();
//     // });
// });


export { initSweetalert };


