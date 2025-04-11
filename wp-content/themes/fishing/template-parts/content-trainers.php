<div class="swiper-slide trainers-slider__slide">
    <a href="<?php the_permalink() ?>" class="trainers-slider__link">
        <?php
        if (has_post_thumbnail()) {
            the_post_thumbnail(
                'post-thumbnail',
                array(
                    'alt' => the_title_attribute(
                        array(
                            'echo' => false,
                        )
                    ),
                )
            );
        } else {
            echo '<img src="' . get_stylesheet_directory_uri() . '/images/svg/placeholder.svg" />';
        }
        ?>

        <svg class="animateScale" width="69" height="69" viewBox="0 0 69 69" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="0.68316" y="0.68316" width="66.9497" height="66.9497" rx="33.4748" stroke="#FFC165" stroke-width="1.36632" />
            <path d="M42.3559 35.5243V25.9601H32.7917" stroke="#FFC165" stroke-width="2.73264" stroke-linecap="round" stroke-linejoin="round" />
            <path d="M42.3559 25.9601L25.9601 42.3559" stroke="#FFC165" stroke-width="2.73264" stroke-linecap="round" stroke-linejoin="round" />
        </svg>


        <h3 class="fromOpacity"><?php the_title() ?>
        </h3>

        <?php if (is_singular()){
            
        }
        ?>
    </a>


</div>