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
                    <h2 class="fromTop"><?php echo $about_head ?></h2>

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
                    <li class="about-list__item fromOpacity">
                        <p>Свяжитесь с нами!</p>
                        <?php
                        if ($messengers = carbon_get_theme_option('messengers')) {
                        ?>
                            <ul class="messengers-list _contacts">
                                <?php if ($phone_item = carbon_get_theme_option('crb_mes_phone_link')) {
                                    $phone_item_img = carbon_get_theme_option('crb_mes_phone_link_img');
                                    $phone_item_img_url = wp_get_attachment_image_url($phone_item_img, 'full');
                                    echo '<li class="messengers-list__item">
									<a href="' . $phone_item . '" class="messengers-list__item__link">
									<img src="' . $phone_item_img_url . '" alt="" />
									</a>
									</li>';
                                }
                                ?>
                                <?php
                                foreach ($messengers as $messenger) {
                                    $mes_img = wp_get_attachment_image_url($messenger['crb_mes_image'], 'full')
                                ?>
                                    <li class="messengers-list__item">
                                        <a href="<?php echo $messenger['crb_mes_link'] ?>" class="messengers-list__item__link">
                                            <img src="<?php echo $mes_img; ?>" alt="<?php echo $messenger['crb_mes_image'] ?>">
                                        </a>
                                    </li>
                                <?php
                                }
                                ?>
                            </ul>
                        <?php
                        }
                        ?>
                    </li>
                </ul>

                <div class="about-section__inner__right">

                </div>

            </div>


        </div>
    </section>
<?php
}
?>