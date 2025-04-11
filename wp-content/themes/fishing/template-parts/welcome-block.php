<?php
$welcome_head = carbon_get_post_meta(get_the_ID(), 'crb_welcome_head');
$welcome_text = carbon_get_post_meta(get_the_ID(), 'crb_welcome_text');
?>

<?php if ($welcome_head || $welcome_text) {
?>
    <section class="section _welcome">
        <div class="fixed-container">
            <div class="section-title fromOpacity">
                <h2><?php echo $welcome_head ?></h2>
            </div>

            <div class="welcome__inner">
                <?php
                if ($welcome_pics = carbon_get_post_meta(get_the_ID(), 'crb_welcome_pics')) {
                ?>
                    <div class="welcome__inner__pics">
                        <?php
                        $i = 0;
                        foreach ($welcome_pics as $welcome_pic) {
                            $welcome_image = $welcome_pic['crb_welcome_img'];
                            $welcome_image_url_full = wp_get_attachment_image_url($welcome_image, 'full');
                            echo
                            '<a data-fancybox href="' . $welcome_image_url_full . '"><img src="'.$welcome_image_url_full .'" alt="">
                            </a>';
                        }
                        ?>
                    </div>
                <?php
                }
                ?>

                <div class="welcome__inner__text">
                    <?php echo $welcome_text ?>
                </div>
                
            </div>

        </div>
    </section>
<?php
}
