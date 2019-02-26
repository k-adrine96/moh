(function (window, $) {
  window.SlickSlider = function () {

    $('.main__cover').slick({
      dots: true,
      infinite: true,
      speed: 2000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false
    });
    $('.news__content--slider').slick({
      prevArrow: ('.news-cont-prev'),
      nextArrow: ('.news-cont-next'),
      dots: false,
      infinite: true,
      speed: 2000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true
    });

    $('.info__platform--cont--slider').slick({
      prevArrow: ('.info__platform-prev'),
      nextArrow: ('.info__platform-next'),
      dots: false,
      infinite: true,
      speed: 1000,
      slidesToShow: 4,
      slidesToScroll: 1,
      arrows: true
    });

    $('.videos__background--content--slider').slick({
      prevArrow: ('.videos__background-prev'),
      nextArrow: ('.videos__background-next'),
      dots: false,
      infinite: true,
      speed: 2000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true
    });

    $('.partners--cont--slider').slick({
      prevArrow: ('.partners-prev'),
      nextArrow: ('.partners-next'),
      dots: false,
      infinite: true,
      speed: 2000,
      slidesToShow: 4,
      slidesToScroll: 1,
      arrows: true,
      responsive: [
        {
          breakpoint: 1300,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 2,
            infinite: true,
            dots: true
          }
        }
      ]
    });

  }

})(window, jQuery);