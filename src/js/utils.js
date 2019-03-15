(function (window, $) {
  window.stopPropagation = function (el, event) {
    $(el).on(event, function (e) {
      e.stopPropagation();
    });
  }

  // window.slideToogle = function (el, className) {
  //
  //   $(el).on('click', function () {
  //
  //     let currentData = $(this).data("for");
  //     $(className).slideUp();
  //     $(className + "." + currentData).slideToggle();
  //
  //   });
  // }
})(window, jQuery);

$(document).ready(function () {
  $('.kuku').on('click', function (e) {
    let $thisDataFor = $(this).data('for');
    if ($('.workers__container.' + $thisDataFor).hasClass('active')) {
      e.stopPropagation();
      $('.workers__container.' + $thisDataFor).slideUp().removeClass('active');
      return;
    }
    $('.workers__container').removeClass('active').slideUp();
    $('.workers__container.' + $thisDataFor).addClass('active').slideDown();
  })
});