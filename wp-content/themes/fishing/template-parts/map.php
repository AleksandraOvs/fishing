<?php
if ($map_code = carbon_get_theme_option('crb_map_code')) {
?>
    <section class="section">
        <div class="fixed-container">
            <div class="section-title fromOpacity">
                <h2 class="fromTop">Как нас найти</h2>
                <span class="heading-line"></span>
            </div>
            <div class="map" id="map">
                <?php echo $map_code ?>
            </div>

        </div>
    </section>
<?php
}
