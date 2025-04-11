<div class="section-title fromOpacity _tabs-buttons">
    <h2 class="tab-button active" data-value="1">Блог</h2>
    <h2 class="tab-button" data-value="2">Новости</h2>
</div>

<div class="blog-section__inner">
    <!-- BLOG -->
    <!-- <div class="blog-section__tab"> -->
        <?php
        $args = array(
            'posts_per_page' => 3,
            'post_type' => 'post',
            'category_name' => 'blog'
        );
        $query_blog = new WP_Query($args);

        // Цикл
        if ($query_blog->have_posts()) {
        ?>
            <div class="blog-section__tab__list show">
                <?php
                while ($query_blog->have_posts()) {
                    $query_blog->the_post();
                    get_template_part('template-parts/content', get_post_type());
                }
                ?>
            <a class="link" href="/">Читать весь блог</a>    
            </div>
            
        <?php

        } else {
            get_template_part('template-parts/content', 'none');
        }

        // Возвращаем оригинальные данные поста. Сбрасываем $post.
        wp_reset_postdata();
        ?>

    <!-- </div> -->
    <!-- END OF BLOG -->

    <!-- NEWS -->
    <!-- <div class="blog-section__tab"> -->
    <?php
        $args = array(
            'posts_per_page' => 3,
            'post_type' => 'post',
            'category_name' => 'news'
        );
        $query_blog = new WP_Query($args);

        // Цикл
        if ($query_blog->have_posts()) {
        ?>
            <div class="blog-section__tab__list">
                <?php
                while ($query_blog->have_posts()) {
                    $query_blog->the_post();
                    get_template_part('template-parts/content', get_post_type());
                }
                ?>
            </div>
        <?php

        }

        // Возвращаем оригинальные данные поста. Сбрасываем $post.
        wp_reset_postdata();
        ?>
    <!-- </div> -->
    <!-- END OF NEWS -->
</div>