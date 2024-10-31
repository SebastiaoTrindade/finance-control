// Apagar notificação de cadastro
$(document).on('turbolinks:load', function() {
  const notice = $('#notice');
  if (notice.length) {
      setTimeout(() => {
          notice.fadeOut('slow');
      }, 2000);
  }
});


  

 
