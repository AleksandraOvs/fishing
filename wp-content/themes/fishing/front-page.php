<?php get_header() ?>

<?php get_template_part('template-parts/hero') ?>
<?php get_template_part('template-parts/welcome-block') ?>
<?php get_template_part('template-parts/way-block') ?>
<?php get_template_part('template-parts/about-us') ?>
<?php get_template_part('template-parts/bath') ?>
<?php get_template_part('template-parts/video') ?>
<?php 
    if ($photo_bg = carbon_get_post_meta(get_the_ID(), 'crb_image_background')){
        $photo_bg_img = wp_get_attachment_image_url($photo_bg, 'full');
        ?>
            <div class="photo-block fromOpacity">
               <?php  echo '<img src="'.$photo_bg_img.'" />'; ?>

               <div class="photo-block__content fromRight">
                <?php echo carbon_get_post_meta(get_the_ID(), 'crb_image_text')?>
               </div>
            </div>
        <?php
    }
?>
<?php get_template_part('template-parts/additional') ?>

<?php get_template_part('template-parts/map') ?>

<?php get_template_part('template-parts/photogallery/gallery') ?>

<?php get_template_part('template-parts/faq') ?>

<?php get_footer() ?>