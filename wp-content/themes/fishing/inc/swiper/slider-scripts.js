

const swiperAdd = new Swiper('.add-slider', {
  slidesPerView: 1, // this
  loop: true,
  spaceBetween: 20,
  watchSlidesProgress: true,
  grabCursor: true,
  navigation: {
    nextEl: '.slider__button-next',
    prevEl: '.slider__button-prev',
    lockClass: 'hide'
  },
  breakpoints: {

  767:{
      slidesPerView: 3,
      spaceBetween: 20,
    },

  }
});

const swiperGallery = new Swiper('.gallery-slider', {
  slidesPerView: 1, // this
  loop: true,
  spaceBetween: 0,
  watchSlidesProgress: true,
  grabCursor: true,
  navigation: {
    nextEl: '.slider__button-next',
    prevEl: '.slider__button-prev',
    lockClass: 'hide'
  },
});
