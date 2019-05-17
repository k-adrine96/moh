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
    $('.second-lvl').removeClass('active');
    $('.second--hidden--content').slideUp(500);
  });

  toggleWIthActive('.first-lvl', '.hided--content');
  toggleWIthActive('.second-lvl', '.second--hidden--content');

  $('.faq__row--first--lvl').on('click',function () {
    $('.faq__second--hidden--content').slideUp(500);
  });

  onlyToggle('.faq__row--first--lvl', '.faq__row--hided--content');
  onlyToggle('.faq__second-lvl', '.faq__second--hidden--content');

});