/* TABS FOR NEWS/BLOG */
window.addEventListener('DOMContentLoaded', function () {

    'use strict';
    let tab = document.querySelectorAll('.tab-button'),
        header = document.querySelector('._tabs-buttons'),
        tabContent = document.querySelectorAll('.blog-section__inner .blog-section__tab__list');

    function hideTabContent(a) {
        for (let i = a; i < tabContent.length; i++) {
            tabContent[i].classList.remove('show');
            tabContent[i].classList.add('hide');
            tab[i].classList.remove('active');
        }
    }

    hideTabContent(1);

    function showTabContent(b) {
        if (tabContent[b].classList.contains('hide')) {
            tabContent[b].classList.remove('hide');
            tabContent[b].classList.add('show');
            tab[b].classList.add('active');
        }
    }

    header.addEventListener('click', function (event) {
        let target = event.target;

        if (target && target.classList.contains('tab-button')) {
            for (let i = 0; i < tab.length; i++) {
                if (target == tab[i]) {
                    hideTabContent(0);
                    showTabContent(i);
                    break;
                }
            }
        }

    });
});