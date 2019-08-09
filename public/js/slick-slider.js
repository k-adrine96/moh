(function (window, $) {
  window.SlickSlider = function () {

    $('.main__cover').slick({
      dots: true,
      infinite: true,
      speed: 4000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      // autoplay: true,
      autoplaySpeed: 3000,
    });
    $('.news__content--slider').slick({
      prevArrow: ('.news-cont-prev'),
      nextArrow: ('.news-cont-next'),
      dots: false,
      infinite: true,
      speed: 4000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      // autoplay: true,
      autoplaySpeed: 3000,
    });
    $('.announcements--cont--slider').slick({
      prevArrow: ('.announcements-prev'),
      nextArrow: ('.announcements-next'),
      dots: false,
      infinite: false,
      speed: 4000,
      slidesToShow: 4,
      slidesToScroll: 1,
      arrows: true,
      // autoplay: true,
      autoplaySpeed: 3000,
      responsive: [
        {
          breakpoint: 1250,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1,
          }
        },
        {
          breakpoint: 991,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    });
    $('.videos__background--content--slider').slick({
      prevArrow: ('.videos__background-prev'),
      nextArrow: ('.videos__background-next'),
      dots: false,
      infinite: true,
      speed: 4000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      // autoplay: true,
      autoplaySpeed: 3000,
    });
    $('.partners--cont--slider').slick({
      // prevArrow: ('.partners-prev'),
      // nextArrow: ('.partners-next'),
      dots: false,
      infinite: true,
      speed: 4000,
      slidesToShow: 4,
      slidesToScroll: 1,
      arrows: false,
      // autoplay: true,
      // autoplaySpeed: 3000,
      responsive: [
        {
          breakpoint: 1300,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 980,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1
          }
        }
      ]
    });
    $('.partners-1--cont--slider').slick({
      // prevArrow: ('.partners-prev'),
      // nextArrow: ('.partners-next'),
      dots: false,
      infinite: true,
      speed: 4000,
      slidesToShow: 4,
      slidesToScroll: 1,
      arrows: false,
      // autoplay: true,
      // autoplaySpeed: 3000,
      responsive: [
        {
          breakpoint: 1300,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 980,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1
          }
        }
      ]
    });
    $('.news-slider').slick({
      dots: false,
      infinite: true,
      speed: 4000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      // autoplay: true,
      // autoplaySpeed: 3000,
    });
    $('.single__news--slider').slick({
      // prevArrow: ('.partners-prev'),
      // nextArrow: ('.partners-next'),
      dots: false,
      infinite: false,
      speed: 4000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      // autoplay: true,
      // autoplaySpeed: 3000,
    });

  }

})(window, jQuery);


