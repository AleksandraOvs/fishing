document.addEventListener('DOMContentLoaded', function () {
    anime({
        targets: '.path4',
        strokeDashoffset: [anime.setDashoffset, 0],
        //easing: 'cubicBezier(.5, .05, .1, .3)',
        easing: 'easeInOutQuad',
        duration: 2000,
        //direction: 'alternate',
        loop: false
    });

    anime({
        targets: '.path3',
        strokeDashoffset: [anime.setDashoffset, 0],
        easing: 'easeInOutQuad',
        duration: 1500,
        direction: 'alternate',
        loop: false
    });

    anime({
        targets: '.path2',
        strokeDashoffset: [anime.setDashoffset, 0],
        easing: 'easeInOutQuad',
        duration: 1000,
        direction: 'alternate',
        loop: false
    });

    anime({
        targets: '.path1',
        strokeDashoffset: [anime.setDashoffset, 0],
        easing: 'easeInOutQuad',
        duration: 500,
        direction: 'alternate',
        loop: false,
        delay: 150,
    });

    anime({
        targets: '.circle',
        translateX: [
            { value: 250, duration: 1000, delay: 500 },
            { value: 0, duration: 1000, delay: 500 }
        ],
        translateY: [
            { value: -40, duration: 500 },
            { value: 40, duration: 500, delay: 1000 },
            { value: 0, duration: 500, delay: 1000 }
        ],
        scaleX: [
            { value: 4, duration: 100, delay: 500, easing: 'easeOutExpo' },
            { value: 1, duration: 900 },
            { value: 4, duration: 100, delay: 500, easing: 'easeOutExpo' },
            { value: 1, duration: 900 }
        ],
        scaleY: [
            { value: [1.75, 1], duration: 500 },
            { value: 2, duration: 50, delay: 1000, easing: 'easeOutExpo' },
            { value: 1, duration: 450 },
            { value: 1.75, duration: 50, delay: 1000, easing: 'easeOutExpo' },
            { value: 1, duration: 450 }
        ],
        easing: 'easeOutElastic(1, .8)',
        loop: true
    });
});