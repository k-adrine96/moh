$(document).ready(function () {
  Select2();
  SlickSlider();
  Menu();
  slideToogle();


  $(document).on('click', function () {
    $('.hot-line-info').removeClass('hot-line-show');
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

  $('.links--row--first--lvl').on('click',function () {
    $('.links__websites--row').slideUp(500);
  });
  onlyToggle('.links--row--first--lvl', '.links--hidden--content');
  onlyToggle('.links__second--lvl','.links__websites--row');


  onlyToggle('.faq__row--first--lvl', '.faq__row--hided--content');
  onlyToggle('.faq__second-lvl', '.faq__second--hidden--content');
  onlyToggle('.public__council--row--first--lvl', '.public__council--hidden--content');


  $('.print-page').on('click',function () {
    window.print();
  });

  $('.hot-line-icon').on('click',function () {
    $('.hot-line-info').toggleClass('hot-line-show');
  });
  stopPropagation('.hot-line-icon', 'click');


  var redirect = function () {
    if ($('.search_').val().length >= 3) {
      const url = location.origin + '/search/' + $('.search_').val();
      location.href = url;
    }
  };
  $(document).on('keydown', '.search_', function (e) {
    if (e.key === 'Enter') {
      redirect();
    }
  });

  $('.menu--form img').on('click', function (e) {
    redirect();
  });
});