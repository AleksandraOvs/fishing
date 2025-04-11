

const swiperAdd = new Swiper('.add-slider', {
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
  breakpoints: {
  992:{
    slidesPerView: 3,
    spaceBetween: 20,
  },
  767:{
      slidesPerView: 2.4,
      spaceBetween: 20,
    },

    576:{
      slidesPerView: 1.4, // this
    }
  }
});
