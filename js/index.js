$(document).ready(function () {

  $('.burger__menu').on('click',function (e) {
    e.stopPropagation();
    $('.burger__menu--line-1').toggleClass('rotate-1');
    $('.burger__menu--line-3').toggleClass('rotate-3');
  });

});