<?php

/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package ichi
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>


	<?php
	// if ( is_singular()) {
	// 	the_title( '<h1 class="entry-title">', '</h1>' );
	// 	the_content();
	// }elseif(is_front_page()) {
	?>
	<!-- <a href="<?php //the_permalink() ?>"> -->
		<?php ichi_post_thumbnail(); ?>
		<?php
		// 	echo '<svg class="post-arrow animateScale" width="69" height="69" viewBox="0 0 69 69" fill="none" xmlns="http://www.w3.org/2000/svg">
		//     <rect x="0.68316" y="0.68316" width="66.9497" height="66.9497" rx="33.4748" stroke="#FFC165" stroke-width="1.36632" />
		//     <path d="M42.3559 35.5243V25.9601H32.7917" stroke="#FFC165" stroke-width="2.73264" stroke-linecap="round" stroke-linejoin="round" />
		//     <path d="M42.3559 25.9601L25.9601 42.3559" stroke="#FFC165" stroke-width="2.73264" stroke-linecap="round" stroke-linejoin="round" />
		// </svg>';
		?>
	<!-- </a> -->
	<?php
	echo '<div class="post-item__content">';
	the_title('<h3 class="entry-title"><a href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h3>');
	//the_excerpt();
	ichi_posted_on();
	echo '</div>';
	//} else {
	//	the_title('<h3 class="entry-title"><a href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h3>');
	if ('post' === get_post_type()) :
	?>
		<!-- <div class="entry-meta">
				<?php
				//ichi_posted_on();
				//ichi_posted_by();
				?>
			</div> -->
		<!-- .entry-meta -->
	<?php endif; ?>

	<?php if (!is_front_page()) {
	?>
		<div class="entry-content">

			<?php
			if (is_archive()){
				the_excerpt();
			}else {
			the_content(
				sprintf(
					wp_kses(
						/* translators: %s: Name of current post. Only visible to screen readers */
						__('Continue reading<span class="screen-reader-text"> "%s"</span>', 'ichi'),
						array(
							'span' => array(
								'class' => array(),
							),
						)
					),
					wp_kses_post(get_the_title())
				)
			);

			wp_link_pages(
				array(
					'before' => '<div class="page-links">' . esc_html__('Pages:', 'ichi'),
					'after'  => '</div>',
				)
			);
		}
			?>
		</div><!-- .entry-content -->
	<?php
	}
	?>
	<?php //} 
	?>
	<!-- <footer class="entry-footer">
		<?php //ichi_entry_footer(); 
		?>
	</footer> -->
	<!-- .entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->