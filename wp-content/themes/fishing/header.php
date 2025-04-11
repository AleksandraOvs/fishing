<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package ichi
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>
	<div id="page" class="site">
		<?php
		//if (is_front_page()) {
		echo '<div id="scroll-progress"></div>';
		//}
		?>
		<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e('Skip to content', 'ichi'); ?></a>

		<header id="masthead" class="site-header">
			<div class="fixed-container">
				<div class="site-branding">

					<a href="/" class="header__inner__logo">
						<?php
						$header_logo = get_theme_mod('header_logo');
						$img = wp_get_attachment_image_src($header_logo, 'full');
						if ($img) : echo '<img src="' . $img[0] . '" alt="">';
						endif;
						?>
					</a>
					<?php
					//if (is_front_page() && is_home()) :
					?>
					<!-- <h1 class="site-title"><a href="<?php //echo esc_url(home_url('/')); 
															?>" rel="home"><?php //bloginfo('name'); 
																			?></a></h1> -->
					<?php
					//else :
					?>
					<!-- <p class="site-title"><a href="<?php //echo esc_url(home_url('/')); 
														?>" rel="home"><?php //bloginfo('name'); 
																		?></a></p>  -->
					<?php
					// endif;
					// $site_description = get_bloginfo('description', 'display');
					// if ($site_description || is_customize_preview()) :
					?>
					<!-- <p class="site-description"><?php //echo $site_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped 
														?></p>  -->
					<?php //endif; 
					?>
				</div><!-- .site-branding -->

				<nav id="site-navigation" class="main-navigation">

					<?php
					wp_nav_menu(
						array(
							'theme_location' => 'menu-1',
							'menu_id'        => 'primary-menu',
						)
					);
					?>

				</nav><!-- #site-navigation -->
				<div class="header-buttons">
					<a href="#" class="menu-toggle">
						<div class="bar"></div>
						<div class="bar"></div>
						<div class="bar"></div>
					</a>

					<?php
					if ($yc_button = carbon_get_theme_option('crb_reg_button_link')) {
					?>
						<a target="_blank" href="<?php echo $yc_button ?>" class="btn"><?php if ($yc_button_text = carbon_get_theme_option('crb_reg_button_text')){ echo $yc_button_text; }else{echo 'Записаться';}?></a>
					<?php
					}
					?>


				</div>


			</div>
		</header><!-- #masthead -->