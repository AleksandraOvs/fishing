<?php

add_action( 'init', 'register_post_types' );

	function register_post_types(){
	
		register_post_type( 'photos', [
			'label'  => null,
			'labels' => [
				'name'               => 'Галереи', // основное название для типа записи
				'singular_name'      => 'Галерея', // название для одной записи этого типа
				'add_new'            => 'Добавить Галерею', // для добавления новой записи
				'add_new_item'       => 'Добавление Галереи', // заголовка у вновь создаваемой записи в админ-панели.
				'edit_item'          => 'Редактирование Галереи', // для редактирования типа записи
				'new_item'           => 'Новая Галерея', // текст новой записи
				'view_item'          => 'Смотреть Галерею', // для просмотра записи этого типа.
				'search_items'       => 'Искать Галерею', // для поиска по этим типам записи
				'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
				'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
				'parent_item_colon'  => '', // для родителей (у древовидных типов)
				'menu_name'          => 'Галереи', // название меню
			],
			'description'            => '',
			'public'                 => true,
			// 'publicly_queryable'  => null, // зависит от public
			// 'exclude_from_search' => null, // зависит от public
			// 'show_ui'             => null, // зависит от public
			// 'show_in_nav_menus'   => null, // зависит от public
			'show_in_menu'           => true, // показывать ли в меню админки
			// 'show_in_admin_bar'   => null, // зависит от show_in_menu
			'show_in_rest'        => true, // добавить в REST API. C WP 4.7
			'rest_base'           => false, // $post_type. C WP 4.7
			'menu_position'       => 3,
			'menu_icon'           => 'dashicons-images-alt2',
			//'capability_type'   => 'post',
			//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
			//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
			'hierarchical'        => true,
			'supports'            => [ 'title','thumbnail', 'excerpt'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
			'taxonomies'          => ['category'],
			'has_archive'         => true,
			'rewrite'             => true,
			'query_var'           => 'photos',
		] );

		//register_taxonomy( 'decor-type', [

		//]);

    }

	