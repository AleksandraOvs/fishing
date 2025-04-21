<?php
if ($bath_items = carbon_get_post_meta(get_the_ID(), 'crb_bath_list')) {
?>
    <section class="section _bath-section">
        <div class="fixed-container">
            <?php
            if ($bath_head = carbon_get_post_meta(get_the_ID(), 'crb_bath_head')) {
            ?>
                <div class="heading-flex">
                    <div class="section-title ">
                        <?php
                        if ($bath_desc = carbon_get_post_meta(get_the_ID(), 'crb_bath_desc')) {
                            echo '<p class="section-title__description color-primary" style="border-color: var(--primary); ">' . $bath_desc . '</p>';
                        }
                        ?>
                        <h2 class="fromTop color-primary"><?php echo $bath_head ?></h2>

                    </div>

                    <?php
                    if ($bath_text = carbon_get_post_meta(get_the_ID(), 'crb_bath_text')) {
                        echo '<div class="_bath-section__description color-primary fromRight">' . $bath_text . '</div>';
                    }
                    ?>
                </div>

            <?php
            }
            ?>
            <div class="bath-section__inner">
                <ul class="bath-list">
                    <?php
                    foreach ($bath_items as $bath_item) {
                        $bath_icon = $bath_item['crb_bath_img'];
                        $bath_icon_url = wp_get_attachment_image_url($bath_icon, 'full');
                    ?>
                        <li class="bath-list__item fromBottom">
                            <div class="bath-list__item__pic">
                                <img src="<?php echo $bath_icon_url ?>" alt="">
                            </div>

                            <div class="bath-list__item__content">
                                <h4><?php echo $bath_item['crb_bath_list_head'] ?></h4>
                                <p><?php echo $bath_item['crb_bath_list_desc'] ?></p>
                            </div>
                        </li>
                    <?php
                    }
                    ?>
                </ul>

                <div class="bath-photos">
                    <?php 
                        if ($bath_gallery = carbon_get_post_meta(get_the_ID(), 'crb_bath_gallery')){
                            foreach ($bath_gallery as $bath_photo){
                                $bath_photo = $bath_photo['crb_bath_gal_img'];
                                $bath_photo_url_full = wp_get_attachment_image_url($bath_photo, 'full');
                                ?>
                                <a data-fancybox="gallery" href="<?php echo $bath_photo_url_full ?>">

                                <img src="<?php echo  $bath_photo_url_full ?>" alt="Баня на барже">
                                </a>
                                <?php
                            }
                        }
                    ?>
                </div>

                

            </div>


        </div>
    </section>
<?php
}
?>