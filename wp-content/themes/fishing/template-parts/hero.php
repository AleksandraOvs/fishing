<section class="hero-section">
    <?php if ($hero_pic = carbon_get_post_meta(get_the_ID(), 'crb_hero_img')) {
    ?>
        <?php
        // foreach ($hero_pics as $hero_pic) {
        //     $hero_pic_url = wp_get_attachment_image_url($hero_pic['crb_hero_img'], 'full');
        //     $hero_pic_url_mob = wp_get_attachment_image_url($hero_pic['crb_hero_img_mob'], 'full');
        ?>
        <div class="hero-background">
            <?php
            $hero_pic_url = wp_get_attachment_image_url($hero_pic, 'full');
            ?>
            <picture>
                <?php
                if ($hero_pic_mob = carbon_get_post_meta(get_the_ID(), 'crb_hero_img_mob')) {
                    $hero_pic_url_mob = wp_get_attachment_image_url($hero_pic_mob, 'full');
                    echo '<source srcset="' . $hero_pic_url_mob . '" media="(max-width: 768px)">';
                }
                ?>
                <source srcset="<?php echo $hero_pic_url; ?>" media="(min-width: 769px)">
                <img src="<?php echo $hero_pic_url; ?>">
            </picture>

        </div>

    <?php
    } else {

        $hero_video = carbon_get_post_meta(get_the_ID(), 'crb_first_video');

    ?>

        <!-- <video class="promo__video" pip="false" video autoplay loop muted playsinline webkit-playinginline poster="<?php //echo get_stylesheet_directory_uri() . '/images/video/poseter.jpg'
                                                                                                                        ?>"> -->
        <div class="video-inner">
        <video class="first__video" pip="false" autoplay muted playsinline webkit-playinginline >

            <?php
            foreach ($hero_video  as $v => $video) {

                $video_url =  wp_get_attachment_url($video);

                $this_ext = end(explode(".", $video_url));

                echo '<source src="' . wp_get_attachment_url($video) . '"' . 'type="video/' . $this_ext . ' " ' . '>';
            }
            ?>
        </video>
        </div>
    <?php
    }
    // }
    ?>
    <div class="hero-content">
        <div class="fixed-container">

            <div class="hero-content__inner">
                <div class="hero-content__inner__left">
                    <?php
                    if ($hero_heading = carbon_get_post_meta(get_the_ID(), 'crb_hero_heading')) {
                        echo '<h2 class="fromTop">' . $hero_heading . '</h2>';
                    }
                    ?>

                    <?php
                    if ($hero_description = carbon_get_post_meta(get_the_ID(), 'crb_hero_desc')) {
                        echo '<p class="hero-description fromBottom">' . $hero_description . '</p>';
                    }
                    ?>

                    <?php
                    if ($hero_button = carbon_get_post_meta(get_the_ID(), 'crb_hero_link')) {
                    ?>
                        <a href="<?php echo $hero_button; ?>" class="btn">

                            <?php
                            if ($hero_button_txt = carbon_get_post_meta(get_the_ID(), 'crb_hero_link_text')) {
                                echo $hero_button_txt;
                            } else {
                                echo 'Button Link';
                            } ?></a>
                    <?php

                    }
                    ?>
                </div>

                <div class="hero-content__inner__right">
                    <a href="#hero-popup" data-fancybox="" class="watch-video fromRight">
                        <div class="watch-video__button">
                            <svg width="42" height="42" viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M21 0C26.5695 0 31.911 2.21249 35.8492 6.15076C39.7875 10.089 42 15.4305 42 21C42 26.5695 39.7875 31.911 35.8492 35.8492C31.911 39.7875 26.5695 42 21 42C15.4305 42 10.089 39.7875 6.15076 35.8492C2.21249 31.911 0 26.5695 0 21C0 15.4305 2.21249 10.089 6.15076 6.15076C10.089 2.21249 15.4305 0 21 0ZM21 39C25.7739 39 30.3523 37.1036 33.7279 33.7279C37.1036 30.3523 39 25.7739 39 21C39 16.2261 37.1036 11.6477 33.7279 8.27208C30.3523 4.89642 25.7739 3 21 3C16.2261 3 11.6477 4.89642 8.27208 8.27208C4.89642 11.6477 3 16.2261 3 21C3 25.7739 4.89642 30.3523 8.27208 33.7279C11.6477 37.1036 16.2261 39 21 39ZM18.75 27.393L28.341 21L18.75 14.607V27.393ZM19.248 11.331L30.942 19.128C31.2502 19.3335 31.5028 19.6118 31.6776 19.9384C31.8523 20.265 31.9438 20.6296 31.9438 21C31.9438 21.3704 31.8523 21.735 31.6776 22.0616C31.5028 22.3882 31.2502 22.6665 30.942 22.872L19.248 30.669C18.9092 30.8949 18.5154 31.0246 18.1086 31.0442C17.7019 31.0639 17.2974 30.9728 16.9384 30.7806C16.5793 30.5885 16.2791 30.3025 16.0699 29.9531C15.8606 29.6038 15.75 29.2042 15.75 28.797V13.2C15.75 12.7928 15.8606 12.3932 16.0699 12.0439C16.2791 11.6945 16.5793 11.4085 16.9384 11.2164C17.2974 11.0242 17.7019 10.9331 18.1086 10.9528C18.5154 10.9724 18.9092 11.1021 19.248 11.328V11.331Z" fill="#333333" />
                            </svg>
                        </div>


                        <p>Смотреть видео о нашем туре</p>

                    </a>
                </div>
            </div>

        </div>
    </div>

</section>