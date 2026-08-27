<?php
if ($about_items = carbon_get_post_meta(get_the_ID(), 'crb_about_list')) {
?>
    <section class="section _about-section">
        <div class="fixed-container">
            <?php
            if ($about_head = carbon_get_post_meta(get_the_ID(), 'crb_about_head')) {
            ?>
                <div class="section-title ">
                    <?php
                    if ($head_desc = carbon_get_post_meta(get_the_ID(), 'crb_about_desc')) {
                        echo '<p class="section-title__description fromOpacity">' . $head_desc . '</p>';
                    }
                    ?>
                    <div class="fromTop color-primary"><?php echo $about_head ?></div>

                </div>
            <?php
            }
            ?>

            <div class="about-section__inner">
                <ul class="about-list">
                    <?php
                    foreach ($about_items as $about_item) {
                        $about_icon = $about_item['crb_about_img'];
                        $about_icon_url = wp_get_attachment_image_url($about_icon, 'full');
                    ?>
                        <li class="about-list__item fromOpacity">
                            <img src="<?php echo $about_icon_url ?>" alt="">
                            <p><?php echo $about_item['crb_about_text'] ?></p>
                        </li>


                    <?php
                    }
                    ?>
                    <li class="about-section__inner__right">

                    </li>
                </ul>



            </div>


        </div>
    </section>
<?php
}
?>