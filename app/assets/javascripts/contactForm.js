$(document).on('turbolinks:load', function() {
  // only run this on the contacts#new view
  if ( $('.c-contacts, .a-new').length > 0 ) {
    $('.contact-input').on('focus', function() {
      $(this).prev().removeClass('input-valid').addClass('contact-label-active');
    });

    $('.contact-input').on('blur', function() {
      if ( $(this).val() === "" ) {
        $(this).prev().removeClass('contact-label-active input-valid');
      } else {
        $(this).prev().addClass('input-valid');
      }
    });
  }
});
