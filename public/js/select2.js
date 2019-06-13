(function (window, $) {
  window.Select2 = function () {
    $('.language--bar').select2({
      minimumResultsForSearch: -1
    });
    $('.Legal__acts--type').select2({
      minimumResultsForSearch: -1,
      placeholder: 'Տեսակ',
      allowClear: true
    })
  }
})(window, jQuery);
