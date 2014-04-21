// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function () {
  $('#share_recipe').click(function() {
    $('#share_recipe').hide();
    $('#recipe').fadeIn();
  });

  $('#new_subscriber').on('ajax:success', function(e, data, status, xhr) {
    $('.sign-up-form').hide();
    $('.thank-you').show();
  });

});
