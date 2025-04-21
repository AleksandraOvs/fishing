<section class="section _gallery">
    <div class="fixed-container">
        <div class="section-title ">
            <p class="section-title__description fromOpacity">Фото прошлых туров</p>

            <h2 class="fromTop">Фотогалерея</h2>
        </div>
    </div>
    <div class="fluid-container">
        <div class="gallery-items__inner">


            <?php
            $args = array(
                'post_type'      => 'photos',
                'posts_per_page' => 10,
                'post_status'    => 'publish'
            );

            $photos_query = new WP_Query($args);

            if ($photos_query->have_posts()) :
                while ($photos_query->have_posts()) : $photos_query->the_post();
                    $post_id = get_the_ID(); ?>

                    <div class="gallery-item">
                        <h3><?php the_title(); ?></h3>

                        <?php if (has_post_thumbnail()) : ?>
                            <div class="gallery-item__thumbnail">
                                <a data-fancybox data-src="#modal-<?php echo $post_id; ?>" href="javascript:;">
                                    <?php the_post_thumbnail('medium'); ?>
                                </a>
                            </div>
                        <?php endif; ?>

                        <!-- <a href="<?php //the_permalink(); 
                                        ?>">Читать далее</a> -->
                    </div>

                    <!-- Модальное окно -->
                    <div class="gallery-modal" style="display: none;" id="modal-<?php echo $post_id; ?>">
                        <h2><?php the_title(); ?></h2>
                        <?php get_template_part('template-parts/photogallery/gallery-item') ?>
                    </div>

            <?php endwhile;
                wp_reset_postdata();
            else :
                echo '<p>Постов не найдено.</p>';
            endif;
            ?>
        </div>
    </div>
</section>