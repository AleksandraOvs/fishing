<section class="section _way-section">
    <div class="fixed-container">

        <?php
        if ($why_head = carbon_get_post_meta(get_the_ID(), 'crb_way_head')) {
        ?>
            <div class="section-title white-text">
                <?php
                if ($head_desc = carbon_get_post_meta(get_the_ID(), 'crb_way_desc')) {
                    echo '<p class="section-title__description fromOpacity">' . $head_desc . '</p>';
                }
                ?>
                <h2 class="fromTop"><?php echo $why_head ?></h2>
                
            </div>
        <?php
        }
        ?>

        <?php
        if ($why_desc = carbon_get_post_meta(get_the_ID(), 'crb_way_description')) {
        ?>
            <div class="section-description">
                <?php echo $why_desc ?>
            </div>
        <?php
        }
        ?>

        <?php
        if ($way_items = carbon_get_post_meta(get_the_ID(), 'crb_way_list')) {
            $i = 0;
        ?>
            <ul class="way-list">
                <?php
                foreach ($way_items as $way_item) {
                    $i++;

                ?>

                    <li class="way-list__item white-text fromOpacity">
                        <?php echo '<div class="num-inner"><span class="way-num">0' . $i . '</span></div>'; ?>
                        <div class="way-list__item__content">
                            <h3 class="way-head"><?php echo $way_item['crb_way'] ?></h3>
                            <div class="way-desc"><?php echo $way_item['crb_way_desc'] ?></div>
                        </div>



                        <?php
                        if ($way_img = $way_item['crb_way_img']) {
                            $way_img_url = wp_get_attachment_image_url($way_img, 'full');
                            echo '<img src="' . $way_img_url . '" alt="" class="way-img">';
                        }
                        ?>

                    </li>
                <?php
                }

                ?>
            </ul>

            <?php
            if ($endtext = carbon_get_post_meta(get_the_ID(), 'crb_way_end_text')) {
            ?>
                <div class="text-block">
                    <?php echo $endtext ?>
                </div>
            <?php
            }
            ?>
        <?php
        }
        ?>
    </div>
</section>