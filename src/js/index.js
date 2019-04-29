$(document).ready(function () {
  Select2();
  SlickSlider();
  Menu();


  $(document).on('click', function () {
    Menu.close();

    $('.menu--content > li > a').removeClass('active');

    $('.menu--content > li > ul').slideUp(500);

    $('.second-lvl').removeClass('active');

    $('.second--hidden--content').slideUp(500);


  });

  $('.first-lvl').on('click', function () {

    const next = $(this).next('ul');
    $('.menu--content > li > ul').not(next).slideUp(500);
    next.slideToggle(500);

    $(this).addClass('active');
    $('.first-lvl').not(this).removeClass('active');

    $('.second-lvl').removeClass('active');

    $('.second--hidden--content').slideUp(500);
  });

  $('.second-lvl').on('click', function () {

    const next = $(this).next('ul');
    $('.second--hidden--content').not(next).slideUp(500);
    next.slideToggle(500);

    $(this).addClass('active');
    $('.second-lvl').not(this).removeClass('active');
  });

});