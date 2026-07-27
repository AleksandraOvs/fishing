jQuery(function ($) {

    // Скрываем все ответы
    $('.faq-answer').hide();

    $('.faq-question-head').on('click', function () {

        const $item = $(this).closest('.faq-item');
        const $answer = $item.find('.faq-answer');

        // Если уже открыт — закрываем
        if ($item.hasClass('active')) {
            $item.removeClass('active');
            $answer.stop(true, true).slideUp(300);
            return;
        }

        // Закрываем остальные
        $('.faq-item.active')
            .removeClass('active')
            .find('.faq-answer')
            .stop(true, true)
            .slideUp(300);

        // Открываем текущий
        $item.addClass('active');
        $answer.stop(true, true).slideDown(300);

    });

});