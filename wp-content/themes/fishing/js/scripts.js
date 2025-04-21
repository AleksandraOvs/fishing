document.addEventListener("DOMContentLoaded", () => {

    // (function () {
    //     $('.burger').on('click', function() {
    //     $('.burger').toggleClass('animate');
    //         $('.nav').toggleClass('animate');
    //         $('.background-container').toggleClass('animate');
    //     })
    //     })();


    // Изменение хедера при скролле


    const headerFront = document.querySelector('.site-header');
    const headerLogo = document.querySelector('.header__inner__logo');
    const headerChange = () => {
        const
            mainBlock = document.querySelector('body');


        window.addEventListener('scroll', () => {
            if (-mainBlock.getBoundingClientRect().top > 100) {
                headerFront.classList.add('header-scroll');
                headerLogo.classList.add('scroll');

            } else {
                headerFront.classList.remove('header-scroll');
            }
        })

    }
    headerChange();

    //плавный скролл

    function scrollTo(to, duration = 700) {
        const
            element = document.scrollingElement || document.documentElement,
            start = element.scrollTop,
            change = to - start,
            startDate = +new Date(),
            // t = current time
            // b = start value
            // c = change in value
            // d = duration
            easeInOutQuad = function (t, b, c, d) {
                t /= d / 2;
                if (t < 1) return c / 2 * t * t + b;
                t--;
                return -c / 2 * (t * (t - 2) - 1) + b;
            },
            animateScroll = function () {
                const currentDate = +new Date();
                const currentTime = currentDate - startDate;
                element.scrollTop = parseInt(easeInOutQuad(currentTime, start, change, duration));
                if (currentTime < duration) {
                    requestAnimationFrame(animateScroll);
                }
                else {
                    element.scrollTop = to;
                }
            };
        animateScroll();
    }

    //добавляет класс при прокрутке

    function onEntry(entry) {
        entry.forEach(change => {
            if (change.isIntersecting) {
                change.target.classList.add('elementShow');
            }
        });
    }
    let options = { threshold: [0.5] };
    let observer = new IntersectionObserver(onEntry, options);
    let elements = document.querySelectorAll('.fromBottom, .fromTop, .fromRight, .fromOpacity, .fromLeft, .animateScale');
    for (let elm of elements) {
        observer.observe(elm);
    }

    //кнопка вверх

    function scrollTo(to, duration = 700) {
        const
            element = document.scrollingElement || document.documentElement,
            start = element.scrollTop,
            change = to - start,
            startDate = +new Date(),
            // t = current time
            // b = start value
            // c = change in value
            // d = duration
            easeInOutQuad = function (t, b, c, d) {
                t /= d / 2;
                if (t < 1) return c / 2 * t * t + b;
                t--;
                return -c / 2 * (t * (t - 2) - 1) + b;
            },
            animateScroll = function () {
                const currentDate = +new Date();
                const currentTime = currentDate - startDate;
                element.scrollTop = parseInt(easeInOutQuad(currentTime, start, change, duration));
                if (currentTime < duration) {
                    requestAnimationFrame(animateScroll);
                }
                else {
                    element.scrollTop = to;
                }
            };
        animateScroll();
    }

    const upArrow = document.querySelector('.arrow-up');

    upArrow.addEventListener('click', (e) => {
        e.preventDefault();
        // Вызываем функцию, первый аргумент - отступ, второй - скорость скролла, чем больше значение, тем медленнее скорость прокрутки
        scrollTo(0, 800);
    });

    // Вверх и показ верхнего меню
    const arrowUp = () => {
        const
            mainBlock = document.querySelector('.site'),
            arrow = document.querySelector('.arrow-up');

        window.addEventListener('scroll', () => {
            if (-mainBlock.getBoundingClientRect().top > 300) {
                arrow.classList.add('show');
            } else {
                arrow.classList.remove('show');
            }
        })

    }
    arrowUp();

    let body = $('body');
    let menu = $('#site-navigation');
    let textDefault = 'Меню';
    let textOther = 'Закрыть';

    //$('.header__inner__burger span').text(textDefault);

    $(document).on('click', '.menu-toggle', function (event) {

        // textDefault = textOther;
        // textOther = $('.header__inner__burger span').text();
        // $('.header__inner__burger span').text(textDefault);

        event.preventDefault();
        $(this).toggleClass('_open');
        menu.toggleClass('_open');
        body.toggleClass('_fixed');

        // document.querySelector('.header__inner__burger span').innerHTML = 'Закрыть';
    });

    // const menuParent = document.querySelector('.menu-item-has-children a');
    // const subMenu = document.querySelector('.menu-item .sub-menu');
    // menuParent.onmouseover = function(event) {
    //     $(this).toggleClass('_active'); 
    // //     let target = event.target;
    // //   target.style.background = 'rgba(31,31,31,.8)';
    //   };

    let menuParent = document.querySelectorAll(".menu-item-has-children");
    let subMenu = document.querySelectorAll(".menu-item .sub-menu");
    //let currentColor;
    for (let i = 0; i < menuParent.length; i++) {
        menuParent[i].addEventListener("mouseover", function () {

            this.classList.add("active");
        });
        menuParent[i].addEventListener("mouseout", function () {
            this.classList.remove("active");
        });
    }

    /*toggle contacts */

    (function () {
        $('.menu-toggle').on('click', function () {
            $('.menu-toggle').toggleClass('animate');
            $('.main-navigation').toggleClass('animate');
            $('.background-container').toggleClass('animate');
        })
    })();

    (function () {
        $('.toggle-contacts-icon').on('click', function (e) {
            $(this).toggleClass('animate');
            e.preventDefault();
            $('.messengers-list._toggle-contacts').toggleClass('animate');
            //$('._toggle-contacts').toggleClass('animate');
            //$('.background-container').toggleClass('animate');
        })
    })();

    // Прогресс-бар
    const scrollProgress = document.getElementById('scroll-progress');
    const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;

    if (scrollProgress) {
        window.addEventListener('scroll', () => {
            const scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
            scrollProgress.style.width = `${(scrollTop / height) * 100}%`;
        });
    }

    $(".wpcf7-validates-as-tel").mask("8(999) 999-9999", {
        //completed: function(){ alert("Вы ввели номер: " + this.val()); }
    });



// $('.trainer-gallery').masonry({
//     columnWidth: 100,
//     itemSelector: '.trainer-gallery',
//     percentPosition: true
//   });


});