<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package ichi
 */

get_header();
?>

<main id="primary" class="site-main">
	<section class="section page-section">
		<div class="single-page_header">
			<?php ichi_post_thumbnail(); ?>
			<div class="fixed-container">
				<ul class="breadcrumbs__list">
					<?php echo site_breadcrumbs(); ?>
				</ul>
				<h2 class="fromOpacity"><?php the_title(); ?></h2>
			</div>

		</div>

		<div class="fixed-container">
			<?php
			while (have_posts()) :
				the_post();
			?>

				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<?php
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

					?>
		</div><!-- .entry-content -->



		</footer>
		<!-- .entry-footer -->
		</article><!-- #post-<?php the_ID(); ?> -->

	<?php
			endwhile; // End of the loop.
	?>
	</div>
	</section>
</main><!-- #main -->

<?php
get_sidebar();
get_footer();
