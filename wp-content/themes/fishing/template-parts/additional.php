<section class="section _additional-section">
    <div class="fixed-container">
        <?php
        if ($add_head = carbon_get_post_meta(get_the_ID(), 'crb_add_head')) {
        ?>
            <div class="section-title ">
                <?php
                if ($head_desc = carbon_get_post_meta(get_the_ID(), 'crb_add_desc')) {
                    echo '<p class="section-title__description fromOpacity">' . $head_desc . '</p>';
                }
                ?>
                <h2 class="fromTop"><?php echo $add_head ?></h2>
            </div>
        <?php
        }
        ?>

        <div class="add-section__content">


            <?php
            if ($add_text = carbon_get_post_meta(get_the_ID(), 'crb_add_text')) {
            ?>

                <?php echo $add_text ?>

            <?php
            }
            ?>

            <?php
            if ($add_text_link = carbon_get_post_meta(get_the_ID(), 'crb_add_link')) {
            ?>
                <a class="btn" href="<?php echo $add_text_link ?>">
                    <?php echo carbon_get_post_meta(get_the_ID(), 'crb_add_link_text') ?>
                </a>

            <?php
            }
            ?>
        </div>

   

    <?php
    if ($add_slides = carbon_get_post_meta(get_the_ID(), 'crb_add_slides')) {
    ?>
        <div class="swiper add-slider">
            <div class="swiper-wrapper">
                <?php
                foreach ($add_slides as $add_slide) {
                    $slide_img = $add_slide['crb_add_slide_image'];
                    $slide_img_url = wp_get_attachment_image_url($slide_img, 'full');
                ?>
                    <div class="swiper-slide add-slider__slide">
                        <div class="add-slider__slide__image-inner">
                            <img src="<?php echo $slide_img_url ?>" alt="">
                            <h3><?php echo $add_slide['crb_add_slide_head'] ?></h3>
                        </div>

                        <div class="add-slider__slide__content-inner">

                            <div>
                                <?php echo $add_slide['crb_add_slide_text'] ?>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>

            <div class="slider__button-prev">
                <svg width="70" height="16" viewBox="0 0 70 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M8 15L1 8M1 8L8 1M1 8L69 8" stroke="#3E5888" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
            </div>

            <div class="slider__button-next">
                <svg width="70" height="16" viewBox="0 0 70 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M62 1L69 8M69 8L62 15M69 8L1 8" stroke="#3E5888" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                </svg>

            </div>


        </div>
    <?php
    }
    ?>
    
    </div>
</section>