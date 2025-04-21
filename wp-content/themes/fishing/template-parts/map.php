<?php
if ($map_code = carbon_get_theme_option('crb_map_code')) {
?>
    <section class="section section-map">
        <div class="fixed-container">
            <?php
            if ($map_head = carbon_get_post_meta(get_the_ID(), 'crb_map_head')) {
            ?>
                <div class="section-title ">
                    <?php
                    if ($map_desc = carbon_get_post_meta(get_the_ID(), 'crb_map_desc')) {
                        echo '<p class="section-title__description fromOpacity">' . $map_desc . '</p>';
                    }
                    ?>
                    <h2 class="fromTop"><?php echo $map_head ?></h2>
                </div>
            <?php
            }
            ?>

            <div class="map" id="map">
                <?php echo $map_code ?>
            </div>
        </div>

    </section>
<?php
}
