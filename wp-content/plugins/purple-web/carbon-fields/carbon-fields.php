<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

add_action('carbon_fields_register_fields', 'site_carbon');
function site_carbon()
{

    // Container::make('theme_options', 'Настройки темы')

    //     ->set_page_menu_position(1)
    //     ->set_icon('dashicons-admin-tools')
    //     ->add_tab(__('Hero'), array(

    //         Field::make('image', 'crb_hero_img', 'Изображение для декстопа')
    //             ->set_width(50),
    //         Field::make('image', 'crb_hero_img_mob', 'Изображение для мобильной версии)')
    //             ->set_width(50),
    //         Field::make('rich_text', 'crb_svg', 'SVG')
    //             ->set_width(50),
    //         Field::make('image', 'crb_png_img', 'Картинка PNG')
    //             ->set_width(50),
    //         Field::make('rich_text', 'crb_hero_heading', 'Заголовок')
    //             ->set_width(33),
    //         Field::make('rich_text', 'crb_hero_desc', 'Описание')
    //             ->set_width(33),
    //         Field::make('text', 'crb_hero_link', 'Ссылка кнопки')
    //             ->set_width(50),
    //         Field::make('text', 'crb_hero_link_text', 'Текст ссылки кнопки')
    //             ->set_width(50),

    //     ));

    Container::make('theme_options', 'Настройки')

        ->set_page_menu_position(2)
        ->set_icon('dashicons-admin-generic')

        ->add_tab(__('Контакты'), array(
            Field::make('text', 'crb_mes_address', 'Адрес')
                ->set_width(33),
            Field::make('image', 'crb_mes_address_icon', 'Иконка адреса')
                ->set_width(33),
            Field::make('text', 'crb_mes_address_link', 'Ссылка адреса')
                ->set_width(33),

            Field::make('text', 'crb_mes_phone', 'Телефон')
                ->set_width(50),
            Field::make('text', 'crb_mes_phone_link', 'Ссылка телефона')
                ->set_width(50),
            Field::make('image', 'crb_mes_phone_link_img', 'Иконка телефона')
                ->set_width(50),

            Field::make('complex', 'messengers', 'Ссылки на контакты')
                ->add_fields(array(

                    Field::make('text', 'crb_mes_name', 'Название')
                        ->set_width(33),

                    Field::make('text', 'crb_mes_link', 'Ссылка на контакт')
                        ->set_width(33),

                    Field::make('image', 'crb_mes_image', 'Иконка контакта')
                        ->set_width(33),
                )),
            //Field::make('')
        ))

        ->add_tab(__('Код Яндекс-карты'), array(
            Field::make('text', 'crb_map_code', 'Код карты')
        ))

        ->add_tab(__('Кнопка записаться'), array(
            Field::make('text', 'crb_reg_button_link', 'Ссылка')
                ->set_width(50),
            Field::make('text', 'crb_reg_button_text', 'Текст кнопки')
                ->set_width(50)
        ))

        ->add_tab(__('Форма обратной связи(в футере)'), array(
            Field::make('text', 'crb_footer_form_shortcode', 'Контактная форма для страницы')
                ->help_text('вставьте шорткод для формы обратной связи в это поле')
        ))

        ->add_tab(__('Другие настройки'), array(
            Field::make('image', 'crb_footer_bg', 'Фоновое изображение для футера'),
            Field::make('complex', 'crb_footer_docs', 'Ссылки на оф. документы в футере')
                ->add_fields(array(
                    Field::make('text', 'crb_footer_doc_text', 'Текст ссылки')
                        ->set_width(50),
                    Field::make('text', 'crb_footer_doc_link', 'Cсылка на страницу')
                        ->set_width(50),
                ))
        ));

    Container::make('theme_options', 'Расписание')
        //->show_on_page('shedule')
        ->set_page_menu_position(3)
        ->set_icon('dashicons-media-spreadsheet')
        ->set_classes('shedule')
        ->add_fields(array(
            Field::make('complex', 'crb_shedule_days', 'Расписание')
                ->set_max(7)
                ->add_fields(array(
                    Field::make('text', 'crb_day', 'День недели')
                        ->set_width(15),
                    Field::make('complex', 'crb_shedule', 'Тренировка')
                        ->add_fields(array(
                            Field::make('time', 'crb_day_time', 'Время')
                                ->set_attribute('placeholder', 'Введите время')
                                ->set_width(20),
                            Field::make('text', 'crb_day_trainer', 'Тренер')
                                ->set_width(15),
                            Field::make('association', 'crb_courses', 'Направление')
                                ->set_width(50)
                                ->set_max(1)
                                ->set_types([
                                    [
                                        'type'      => 'post',
                                        'post_type' => 'courses',
                                    ]
                                ])
                        ))
                ))
        ));

    /*POST META*/

    
    // Container::make('post_meta', 'Контент для услуги')
    //     ->show_on_post_type('services')
    //     ->add_fields(array(
    //         Field::make('rich_text', 'crb_service_text', 'Текст для услуги'),
    //         Field::make('text', 'crb_service_benefit_list_head', 'Заголовок блока преимуществ')
    //             ->set_width(33),
    //         Field::make('complex', 'crb_service_benefits_list', 'Преимущества услуги')
    //             ->add_fields(array(
    //                 Field::make('text', 'crb_service_benefit_head', 'Заголовок')
    //                     ->set_width(33),
    //                 Field::make('rich_text', 'crb_service_benefit_description', 'Описание')
    //                     ->set_width(33),
    //                 Field::make('image', 'crb_service_benefit_img', 'Иконка')
    //                     ->set_width(33),
    //             ))
    //     ));

    Container::make('post_meta', 'Контент страницы')
        ->show_on_page('main')
        ->add_tab(__('Первый экран'), array(

            Field::make('image', 'crb_hero_img', 'Изображение для декстопа')
                ->set_width(50),
            Field::make('image', 'crb_hero_img_mob', 'Изображение для мобильной версии)')
                ->set_width(50),
            Field::make('media_gallery', 'crb_first_video', 'Видео')
                ->set_type('video'),
            Field::make('rich_text', 'crb_svg', 'SVG')
                ->set_width(50),
            Field::make('image', 'crb_png_img', 'Картинка PNG')
                ->set_width(50),
            Field::make('rich_text', 'crb_hero_heading', 'Заголовок')
                ->set_width(33),
            Field::make('rich_text', 'crb_hero_desc', 'Описание')
                ->set_width(33),
            Field::make('text', 'crb_hero_link', 'Ссылка кнопки')
                ->set_width(50),
            Field::make('text', 'crb_hero_link_text', 'Текст ссылки кнопки')
                ->set_width(50),
        ))

        ->add_tab(__('Контент блока Welcome'), array(
            Field::make('complex', 'crb_welcome_pics', 'Изображения для блока')
                ->set_max(2)
                ->add_fields(array(
                    Field::make('image', 'crb_welcome_img', 'Фото')
                )),
            Field::make('image', 'crb_welcome_img2', 'Фото#2')
                ->set_width(50),
            Field::make('text', 'crb_welcome_head', 'Заголовок блока')
                ->set_width(50),
            Field::make('rich_text', 'crb_welcome_text', 'Описание - подзаголовок')
                ->set_width(50),
        ))

        ->add_tab(__('Контент блока Путь до базы'), array(

            Field::make('text', 'crb_way_head', 'Заголовок блока')
                ->set_width(50),
            Field::make('text', 'crb_way_desc', 'Краткий подзаголовок')
                ->set_width(50),
            Field::make('complex', 'crb_way_list', 'Пункты')
                ->add_fields(array(
                    Field::make('text', 'crb_way', 'Заголовок пункта')
                        ->set_width(33),
                    Field::make('rich_text', 'crb_way_desc', 'Описание пункта')
                        ->set_width(33),
                    Field::make('image', 'crb_way_img', 'Иконка')
                        ->set_width(33),
                )),

            Field::make('rich_text', 'crb_way_end_text', 'Текстовый блок')
                ->set_width(50),
        ))

        ->add_tab(__('О базе'), array(

            Field::make('text', 'crb_about_head', 'Заголовок блока')
                ->set_width(50),
            Field::make('text', 'crb_about_desc', 'Краткий подзаголовок')
                ->set_width(50),
            Field::make('complex', 'crb_about_list', 'Пункты')
                ->add_fields(array(
                    Field::make('image', 'crb_about_img', 'Иконка')
                        ->set_width(33),
                    Field::make('rich_text', 'crb_about_text', 'Описание пункта')
                        ->set_width(33),
                )),
        ))

        ->add_tab(__('О бане'), array(

            Field::make('text', 'crb_bath_head', 'Заголовок блока')
                ->set_width(33),
            Field::make('text', 'crb_bath_desc', 'Краткий подзаголовок')
                ->set_width(33),
            Field::make('rich_text', 'crb_bath_text', 'Текст')
                ->set_width(33),
            Field::make('complex', 'crb_bath_list', 'Преимущества')
                ->add_fields(array(
                    Field::make('image', 'crb_bath_img', 'Иконка')
                        ->set_width(33),
                    Field::make('rich_text', 'crb_bath_list_head', 'Заголовок пункта')
                        ->set_width(33),
                        Field::make('rich_text', 'crb_bath_list_desc', 'Описание пункта')
                        ->set_width(33),
                )),
            Field::make('rich_text', 'crb_bath_summary', 'Текст Итог')
                ->set_width(33),
            Field::make('complex', 'crb_bath_gallery', 'Фото блока про Баню')
            ->set_classes('gallery-items')    
            ->add_fields(array(
                    Field::make('image', 'crb_bath_gal_img', 'Фото')
                        ->set_width(33),
                ))

        ))

        ->add_tab(__('FAQ'), array(
            Field::make('text', 'crb_faq_head', 'Заголовок блока')
                ->set_width(33),
            Field::make('rich_text', 'crb_faq_desc', 'Краткий подзаголовок блока')
                ->set_width(33),

            Field::make('complex', 'crb_faq_items', 'Вопрос-ответ')
                ->add_fields(array(
                    Field::make('text', 'crb_faq_question', 'Вопрос')
                        ->set_width(50),
                    Field::make('rich_text', 'crb_faq_answer', 'Ответ')
                        ->set_width(50)
                ))
        ))

        ->add_tab(__('Видео'), array(
            Field::make('media_gallery', 'crb_hero_video', 'Видео')
                ->set_type('video')
                ->set_width(100),
            Field::make('rich_text', 'crb_video_text', 'Текстовый блок')
        ))

        ->add_tab(__('Фото'), array(
            Field::make('image', 'crb_image_background', 'Фото для перебивки')
                ->set_width(50),
            Field::make('rich_text', 'crb_image_text', 'Текстовый блок')
        ))

        ->add_tab(__('Контент блока Доп. информация'), array(
            Field::make('text', 'crb_add_head', 'Заголовок блока')
                ->set_width(33),
            Field::make('rich_text', 'crb_add_desc', 'Краткий подзаголовок блока')
                ->set_width(33),
            Field::make('rich_text', 'crb_add_text', 'Текст о нас')
                ->set_width(50),
            Field::make('text', 'crb_add_link', 'Ссылка')
                ->set_width(50),
            Field::make('text', 'crb_add_link_text', 'Текст ссылки')
                ->set_width(50),
            Field::make('complex', 'crb_add_slides', 'Слайдер блока')
                ->add_fields(array(
                    Field::make('image', 'crb_add_slide_image', 'Фото слайда')
                        ->set_width(33),
                    Field::make('text', 'crb_add_slide_head', 'Заголовок слайда')
                        ->set_width(50),
                    Field::make('rich_text', 'crb_add_slide_text', 'Текст слайда')
                        ->set_width(33),
                ))
        ))

        ->add_tab(__('Блок с картой'), array(
            Field::make('text', 'crb_map_head', 'Заголовок блока')
                ->set_width(50),
            Field::make('rich_text', 'crb_map_desc', 'Краткий подзаголовок блока')
                ->set_width(50),
        ))

        ->add_tab(__('Форма обратной связи'), array(
            Field::make('text', 'crb_cf_form_heading', 'Заголовок формы'),
            Field::make('text', 'crb_cf_form_description', 'Подзаголовок формы'),
            Field::make('rich_text', 'crb_cf_form_text', 'Текст формы'),
            Field::make('Image', 'crb_cf_form_image', 'Изображение для блока с формой'),
            Field::make('text', 'crb_cf_form_shortcode', 'Шорткод формы для страницы')
                ->help_text('вставьте шорткод для формы обратной связи в это поле')
                ->set_width(33),
        ));

        Container::make('post_meta', 'Фото для галереи')
        ->show_on_post_type('photos')
        ->set_classes('gallery-items')
        ->add_fields(array(
        Field::make('complex', 'crb_gallery_images', 'Фотографии для раздела')
                ->add_fields(array(
                    Field::make('image', 'crb_gallery_image', 'Фото')
                        ->set_width(50),
                    Field::make('text', 'crb_gallery_image_desc', 'Описание к фото')
                        ->set_width(50),
                ))
                ));
        

    //Field::make('time', 'time', 'Time')



    // Field::make('complex', 'crb_tuesday', 'Вторник')
    // ->set_classes('shedule-day')
    //     ->add_fields(array(
    //         /*********** */
    //     )),
    // Field::make('complex', 'crb_wednesday', 'Среда')
    // ->set_classes('shedule-day')
    //     ->add_fields(array(
    //         /*********** */
    //     )),
    // Field::make('complex', 'crb_thursday', 'Четверг')
    // ->set_classes('shedule-day')
    //     ->add_fields(array(
    //         /*********** */
    //     )),
    // Field::make('complex', 'crb_friday', 'Пятница')
    // ->set_classes('shedule-day')
    //     ->add_fields(array(
    //         /*********** */
    //     )),
    // Field::make('complex', 'crb_saturday', 'Суббота')
    // ->set_classes('shedule-day')
    //     ->add_fields(array(
    //         /*********** */
    //     )),
    // Field::make('complex', 'crb_sunday', 'Воскресенье')
    // ->set_classes('shedule-day')

    // ->set_classes('shedule-day')
    //     ->add_fields(array(
    //         /*********** */
    //     )),



}
