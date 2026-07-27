$('.faq-question-head').on('click', function () {
    const item = $(this).closest('.faq-item');

    item.toggleClass('active');
    item.find('.faq-answer').stop().slideToggle(300);

    item.siblings().removeClass('active')
        .find('.faq-answer').stop().slideUp(300);
});