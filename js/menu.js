(function (window, $) {
  const Menu = function () {
    $('.burger__menu').on('click', function (e) {
      e.stopPropagation();
      $('.burger__menu--line-1').toggleClass('rotate-1');
      $('.burger__menu--line-2').toggleClass('rotate-2');

      $('.menu').toggleClass('menu--position');
    });

    stopPropagation('.menu', 'click');
  };

  Menu.close = function () {
    $('.menu').removeClass('menu--position');

    if ($('.burger__menu--line-1').hasClass('rotate-1')) {
      $('.burger__menu--line-1').removeClass('rotate-1');
      $('.burger__menu--line-2').removeClass('rotate-2');
    }
  };

  window.Menu = Menu;
})(window, jQuery);
