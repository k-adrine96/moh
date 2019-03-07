(function (window, $) {
  window.stopPropagation = function (el, event) {
    $(el).on(event, function (e) {
      e.stopPropagation();
    });
  }
})(window, jQuery);