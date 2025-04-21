<div class="gallery-item__content">
    <?php
    if ($gallery_imgs = carbon_get_post_meta(get_the_ID(), 'crb_gallery_images')) {
        echo '<div class="swiper gallery-slider"><div class="swiper-wrapper">';
        foreach ($gallery_imgs as $gallery_img) {

            $image = $gallery_img['crb_gallery_image'];
            $gallery_img_url = wp_get_attachment_image_url($image, 'full');

            echo '<div class="swiper-slide gallery-slider__slide">';

            echo '<img src="' . $gallery_img_url . '" alt="" />';

            if ($image_desc = $gallery_img['crb_gallery_image_desc']) {
                echo '<div class="gallery-image__desc">' . $image_desc . '</div>';
            }


            echo '</div>';
        }
        echo '</div>';
        echo
        '<div class="slider__button-prev"><svg width="8" height="13" viewBox="0 0 8 13" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.13395 11.91L6.07295 12.97L0.29395 7.193C0.200796 7.10043 0.126867 6.99036 0.0764193 6.86911C0.0259713 6.74786 0 6.61783 0 6.4865C0 6.35517 0.0259713 6.22514 0.0764193 6.10389C0.126867 5.98264 0.200796 5.87257 0.29395 5.78L6.07295 0L7.13295 1.06L1.70895 6.485L7.13395 11.91Z" fill="white"/>
</svg></div>
            <div class="slider__button-next"><svg width="8" height="13" viewBox="0 0 8 13" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M-3.80594e-05 1.05997L1.06096 -2.91411e-05L6.83996 5.77697C6.93312 5.86954 7.00704 5.97961 7.05749 6.10086C7.10794 6.22211 7.13391 6.35214 7.13391 6.48347C7.13391 6.6148 7.10794 6.74483 7.05749 6.86608C7.00704 6.98733 6.93312 7.0974 6.83996 7.18997L1.06096 12.97L0.00096092 11.91L5.42496 6.48497L-3.80594e-05 1.05997Z" fill="white"/>
</svg>
</div>';
        echo '</div>';
    }


    ?>
</div>