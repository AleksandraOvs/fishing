<?php

/**
 * fishing functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package fishing
 */

if (! defined('_S_VERSION')) {
	// Replace the version number of the theme on each release.
	define('_S_VERSION', '1.0.0');
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function fishing_setup()
{
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on fishing, use a find and replace
		* to change 'fishing' to the name of your theme in all the template files.
		*/
	load_theme_textdomain('fishing', get_template_directory() . '/languages');

	// Add default posts and comments RSS feed links to head.
	add_theme_support('automatic-feed-links');

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support('title-tag');

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support('post-thumbnails');

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__('Primary', 'fishing'),
			'menu-footer' => esc_html__('Footer menu', 'fishing'),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'fishing_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support('customize-selective-refresh-widgets');

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action('after_setup_theme', 'fishing_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function fishing_content_width()
{
	$GLOBALS['content_width'] = apply_filters('fishing_content_width', 640);
}
add_action('after_setup_theme', 'fishing_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function fishing_widgets_init()
{
	register_sidebar(
		array(
			'name'          => esc_html__('Sidebar', 'fishing'),
			'id'            => 'sidebar-1',
			'description'   => esc_html__('Add widgets here.', 'fishing'),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action('widgets_init', 'fishing_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function fishing_scripts()
{
	wp_enqueue_style('fishing-style', get_stylesheet_uri(), array(), _S_VERSION);
	wp_enqueue_style('fishing-theme-fonts', get_stylesheet_directory_uri() . '/css/fonts.css', array(), _S_VERSION);
	wp_style_add_data('fishing-style', 'rtl', 'replace');
	wp_enqueue_style('swiper-style', get_stylesheet_directory_uri() . '/inc/swiper/swiper-bundle.min.css', array(), time());
	wp_enqueue_style('fishing-theme-styles', get_stylesheet_directory_uri() . '/css/styles.css', array(), _S_VERSION);

	wp_deregister_script('jquery');
	wp_enqueue_script('jquery_scripts', get_template_directory_uri() . '/js/jquery-3.7.1.min.js', array(), _S_VERSION, true);
	wp_enqueue_script('fishing-navigation', get_stylesheet_directory_uri() . '/js/navigation.js', array(), null, true);
	wp_enqueue_script('fancy-scripts', get_stylesheet_directory_uri() . '/js/jquery.fancybox.min.js', array(), null, true);
	wp_enqueue_script('fishing-scripts', get_stylesheet_directory_uri() . '/js/scripts.js', array(), null, true);
	wp_enqueue_script('fishing-anime-scripts', get_stylesheet_directory_uri() . '/js/anime.min.js', array(), null, true);
	wp_enqueue_script('fishing-animation-scripts', get_stylesheet_directory_uri() . '/js/animation.js', array(), _S_VERSION, true);
	wp_enqueue_script('swiper-scripts', get_stylesheet_directory_uri() . '/inc/swiper/swiper-bundle.min.js', array(), null, true);
	wp_enqueue_script('js-accordion-ui', 'https://code.jquery.com/ui/1.12.1/jquery-ui.js', array(), null, true);
	wp_enqueue_script('accordion-scripts', get_stylesheet_directory_uri() . '/js/accordion.js', array(), null, true);
	
	wp_enqueue_script('imask-scripts', 'https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js', array(), null, true);

	wp_enqueue_script('slider-js', get_stylesheet_directory_uri() . '/inc/swiper/slider-scripts.js', array(), null, true);
	wp_enqueue_script('tabs-js', get_stylesheet_directory_uri() . '/js/tabs.js', array(), null, true);
	wp_enqueue_script('masonry-js', 'https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js', array(), null, true);
	
	
	if (is_singular() && comments_open() && get_option('thread_comments')) {
		wp_enqueue_script('comment-reply');
	}

	// if (is_front_page()){
	wp_enqueue_style('fancy_styles', get_stylesheet_directory_uri() . '/css/jquery.fancybox.min.css', array(), time());

	// }
}
add_action('wp_enqueue_scripts', 'fishing_scripts');

add_action('after_setup_theme', 'gut_styles');

function gut_styles()
{
	add_theme_support('editor-styles');
	add_editor_style('css/admin-styles.css');
}

add_theme_support('post-thumbnails');
add_image_size('gallery', 400, 270, true);

/**
 * 
 *
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Load WooCommerce compatibility file.
 */
if (class_exists('WooCommerce')) {
	require get_template_directory() . '/inc/woocommerce.php';
}

//require 'inc/carbon-fields.php';
//require 'inc/walker.php';
//require 'inc/breadcrumbs.php';
require 'inc/post-types.php';


// удаляем "Рубрика: ", "Метка: " и т.д. из заголовка архива
add_filter('get_the_archive_title', function ($title) {
	return preg_replace('~^[^:]+: ~', '', $title);
});
