(function (window, $) {
  window.stopPropagation = function (el, event) {
    $(el).on(event, function (e) {
      e.stopPropagation();
    });
  }

  window.slideToogle = function (el, className) {

    $(el).on('click', function () {
      let currentData = $(this).data("for");
      $(className).not(className + "." + currentData).slideUp();
      $(className + "." + currentData).slideToggle();
    });
  }
})(window, jQuery);