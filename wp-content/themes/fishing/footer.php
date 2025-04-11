<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package ichi
 */

?>

<footer id="colophon" class="site-footer"
	<?php
	if ($bg_image = carbon_get_theme_option('crb_footer_bg')) {
		$bg_image_url = wp_get_attachment_image_url($bg_image, 'full');
		echo 'style="background-image: url(' . $bg_image_url . '); background-size: cover;
  background-repeat: no-repeat;
  background-position: center;"';
	} else {
		echo 'style="background-color: var(--black);"';
	}
	?>>
	<div class="fixed-container">
		<div class="site-footer__inner">
			<div class="site-footer__inner__left">
				<div class="site-footer__inner__branding">
					<a href="<?php site_url(); ?>" class="footer__logo logo">
						<?php
						$footer_logo = get_theme_mod('footer_logo');
						$img = wp_get_attachment_image_src($footer_logo, 'full');
						if ($img) :
						?>
							<img src="<?php echo $img[0]; ?>" alt="">
						<?php endif; ?>
					</a>

					<?php
					$ichi_description = get_bloginfo('description', 'display');
					if ($ichi_description) :
					?>
						<p class="site-description"><?php echo $ichi_description; ?></p>
					<?php endif; ?>
				</div>

				<div class="site-footer__inner__contacts">
					<?php if ($address = carbon_get_theme_option('crb_mes_address')) {
						if ($address_link = carbon_get_theme_option('crb_mes_address_link')) {
							echo '<a href="' . $address_link . '">' . $address . '</a>';
						} else {
							echo '<p class="address">' . $address . '</p>';
						}
					}
					?>

					<?php if ($phone = carbon_get_theme_option('crb_mes_phone')) {
						if ($phone_link = carbon_get_theme_option('crb_mes_phone_link')) {
							echo '<a href="' . $phone_link . '">' . $phone  . '</a>';
						}
					}
					?>

					<?php
					if ($messengers = carbon_get_theme_option('messengers')) {
					?>
						<div class="messengers-list">
							<?php
							foreach ($messengers as $messenger) {
								$mes_img = wp_get_attachment_image_url($messenger['crb_mes_image'], 'full');
							?>
								<a href="<?php echo $messenger['crb_mes_link'] ?>" class="messengers-list__item">
									<img src="<?php echo $mes_img ?>" alt="ICHI связаться">
								</a>
							<?php
							}
							?>
						</div>
					<?php
					}
					?>

					<a href="#form-popup" data-fancybox class="footer-btn btn">Написать нам</a>

					<div style="display: none; width: 500px;" id="form-popup">
						<?php
						if ($footer_contactform = carbon_get_theme_option('crb_footer_form_shortcode')) {
							echo do_shortcode(" $footer_contactform ");
						}
						?>
					</div>


					<div style="display: none; width: 500px;" id="hero-popup">
					<video controls width="100%">
						<source src="<?php echo get_stylesheet_directory_uri()?>/files/video.mp4" type="video/mp4" />
					</video>
					</div>



				</div>
			</div>

			<?php
			if ($footer_docs = carbon_get_theme_option('crb_footer_docs')) {
			?>
				<ul class="site-footer__docs _mob">
					<?php
					foreach ($footer_docs as $footer_doc) {
						//echo $footer_doc['crb_footer_doc_link'];
						echo '<li><a href="' . $footer_doc['crb_footer_doc_link'] . '">' . $footer_doc['crb_footer_doc_text'] . '</a></li>';
					}
					?>
				</ul>
			<?php
			}
			?>

			<div class="site-footer__inner__right">
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'menu-footer',
						'menu_id'        => 'footer-menu',
					)
				);
				?>

				<?php
				if ($footer_docs = carbon_get_theme_option('crb_footer_docs')) {
				?>
					<ul class="site-footer__docs">
						<?php
						foreach ($footer_docs as $footer_doc) {
							echo '<li><a href="' . $footer_doc['crb_footer_doc_link'] . '">' . $footer_doc['crb_footer_doc_text'] . '</a></li>';
						}
						?>
					</ul>
				<?php
				}
				?>


			</div>
		</div>

		<div class="site-info">
			<?php
			$site_name = get_bloginfo('name', 'display');
			if ($site_name) {
				echo $site_name . ' | ' . date("Y");
			}
			?>
			<!-- <span class="sep"> | </span> -->
			<?php
			/* translators: 1: Theme name, 2: Theme author. */
			// printf(esc_html__('by %2$s.', 'ichi'), 'ichi', '<a style="color: #fff;" href="https://purple-web.ru">purple</a>');
			?>
		</div><!-- .site-info -->

		<?php
		if (current_user_can('administrator')) {
			echo '<div style="position: fixed;bottom: 10px;right: 60px;background: rgba(0,0,0, .2);color: #cacaca;padding: 5px;font-size: 12px;z-index: 1000;"class="show-temp">' . get_current_template() . '</div>';
		}
		?>
	</div>
	<div class="toggle-contacts__bar">
		<div class="toggle-contacts__list">
			<?php
			if ($messengers = carbon_get_theme_option('messengers')) {
			?>
				<ul class="messengers-list _toggle-contacts">
					<?php if ($phone_item = carbon_get_theme_option('crb_mes_phone_link')) {
						$phone_item_img = carbon_get_theme_option('crb_mes_phone_link_img');
						$phone_item_img_url = wp_get_attachment_image_url($phone_item_img, 'full');
						echo '<li class="messengers-list__item">
									<a href="' . $phone_item . '" class="messengers-list__item__link">
									<img src="' . $phone_item_img_url . '" alt="" />
									</a>
									</li>';
					}
					?>
					<?php
					foreach ($messengers as $messenger) {
						$mes_img = wp_get_attachment_image_url($messenger['crb_mes_image'], 'full')
					?>
						<li class="messengers-list__item">
							<a href="<?php echo $messenger['crb_mes_link'] ?>" class="messengers-list__item__link">
								<img src="<?php echo $mes_img; ?>" alt="<?php echo $messenger['crb_mes_image'] ?>">
							</a>
						</li>
					<?php
					}
					?>
				</ul>
			<?php
			}
			?>
		</div>
		<a href="#" class="toggle-contacts-icon">
			<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 122.88 107.09">
				<title>chat-bubble</title>
				<path d="M63.08,0h.07C79.93.55,95,6.51,105.75,15.74c11,9.39,17.52,22.16,17.11,36.09v0a42.67,42.67,0,0,1-7.58,22.87A55,55,0,0,1,95.78,92a73.3,73.3,0,0,1-28.52,8.68,62.16,62.16,0,0,1-27-3.63L6.72,107.09,16.28,83a49.07,49.07,0,0,1-10.91-13A40.16,40.16,0,0,1,.24,45.55a44.84,44.84,0,0,1,9.7-23A55.62,55.62,0,0,1,26.19,8.83,67,67,0,0,1,43.75,2,74.32,74.32,0,0,1,63.07,0Zm24.18,42a7.78,7.78,0,1,1-7.77,7.78,7.78,7.78,0,0,1,7.77-7.78Zm-51.39,0a7.78,7.78,0,1,1-7.78,7.78,7.79,7.79,0,0,1,7.78-7.78Zm25.69,0a7.78,7.78,0,1,1-7.77,7.78,7.78,7.78,0,0,1,7.77-7.78Zm1.4-36h-.07A68.43,68.43,0,0,0,45.14,7.85a60.9,60.9,0,0,0-16,6.22A49.65,49.65,0,0,0,14.66,26.32,38.87,38.87,0,0,0,6.24,46.19,34.21,34.21,0,0,0,10.61,67,44.17,44.17,0,0,0,21.76,79.67l1.76,1.39L16.91,97.71l23.56-7.09,1,.38a56,56,0,0,0,25.32,3.6,67,67,0,0,0,26.16-8A49,49,0,0,0,110.3,71.36a36.86,36.86,0,0,0,6.54-19.67v0c.35-12-5.41-23.1-15-31.33C92.05,11.94,78.32,6.52,63,6.06Z" />
			</svg>
		</a>
	</div>
</footer><!-- #colophon -->

<div class="arrow-up">
	<svg width="23" height="37" viewBox="0 0 23 37" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path d="M12.4166 1.15529C12.3647 1.10387 12.308 1.0575 12.2473 1.0168L12.155 0.966794C12.0857 0.922317 12.0087 0.891019 11.928 0.874471L11.8319 0.847544C11.6845 0.818513 11.533 0.818513 11.3856 0.847544L11.2856 0.878319L11.1702 0.912939C11.1306 0.931257 11.0921 0.951807 11.0548 0.974489L10.974 1.02065C10.9103 1.06337 10.8511 1.11234 10.7971 1.16683L0.445356 11.507C0.316232 11.6075 0.209948 11.7343 0.133556 11.8789C0.0571638 12.0236 0.0124093 12.1829 0.00226167 12.3462C-0.00788593 12.5095 0.0168053 12.6731 0.0746971 12.8261C0.132589 12.9791 0.222357 13.1181 0.338049 13.2338C0.45374 13.3495 0.592709 13.4393 0.745737 13.4972C0.898765 13.555 1.06236 13.5797 1.22565 13.5696C1.38895 13.5594 1.54822 13.5147 1.69291 13.4383C1.83759 13.3619 1.96438 13.2556 2.06485 13.1265L10.447 4.75588L10.447 35.8226C10.447 36.1286 10.5686 36.4222 10.785 36.6386C11.0014 36.855 11.295 36.9766 11.601 36.9766C11.9071 36.9766 12.2006 36.855 12.4171 36.6386C12.6335 36.4222 12.7551 36.1286 12.7551 35.8226L12.7551 4.75588L21.1372 13.1265C21.3593 13.2993 21.6368 13.385 21.9175 13.3675C22.1983 13.3501 22.4631 13.2307 22.662 13.0317C22.8609 12.8328 22.9803 12.5681 22.9978 12.2873C23.0152 12.0065 22.9295 11.729 22.7567 11.507L12.4166 1.15529Z" fill="white" />
	</svg>
	<div>
	</div><!-- #page -->

	<?php wp_footer(); ?>

	</body>

	</html>