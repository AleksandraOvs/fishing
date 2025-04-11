<?php

/*
Plugin Name: Purple-web
Plugin URI: http://example.com/my-crazy-admin-theme
Description: Developer's settings fot purple web
Author: Purple 
Version: 1.0
Author URI: http://purple-web.ru
*/

function my_admin_theme_style()
{
    wp_enqueue_style('my-admin-theme', plugins_url('styles/wp-admin.css', __FILE__));
}
add_action('admin_enqueue_scripts', 'my_admin_theme_style');

// function my_admin_theme_scripts()
// {
//     wp_enqueue_style('theme-swiper-styles', plugins_url('/swiper/swiper-bundle.min.css', __FILE__));
//     wp_enqueue_script('theme-swiper-scripts', plugins_url('/swiper/swiper-bundle.min.js', __FILE__));
//     wp_enqueue_script('swiper-scripts', plugins_url('/swiper/scripts.js'), array(), _S_VERSION);
// }
// add_action('wp_enqueue_scripts', 'my_admin_theme_scripts');

define('Carbon_Fields_Plugin\PLUGIN_FILE', __FILE__ . '/carbon-fields');

define('Carbon_Fields_Plugin\RELATIVE_PLUGIN_FILE', basename(dirname(\Carbon_Fields_Plugin\PLUGIN_FILE)) . '/' . basename(\Carbon_Fields_Plugin\PLUGIN_FILE));

add_action('after_setup_theme', 'carbon_fields_boot_plugin');
function carbon_fields_boot_plugin()
{
    if (file_exists(__DIR__ . '/carbon-fields/vendor/autoload.php')) {
        require(__DIR__ . '/carbon-fields/vendor/autoload.php');
    }
    \Carbon_Fields\Carbon_Fields::boot();

    if (is_admin()) {
        \Carbon_Fields_Plugin\Libraries\Plugin_Update_Warning\Plugin_Update_Warning::boot();
    }
}

require 'carbon-fields/carbon-fields.php';
require 'editor/custom-logo.php';
require 'admin/current-temp.php';
require 'admin/breadcrumbs.php';
