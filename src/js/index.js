$(document).ready(function () {
  Select2();
  SlickSlider();
  Menu();


  $(document).on('click', function () {
    Menu.close();

    $('.menu--content > li > a').removeClass('active');

    $('.menu--content > li > ul').slideUp(500);
  });

  $('.menu--content > li > a').on('click', function () {

    const next = $(this).next('ul');
    $('.menu--content > li > ul').not(next).slideUp(500);
    next.slideToggle(500);

    $(this).addClass('active');
    $('.menu--content > li > a').not(this).removeClass('active');
  });

});