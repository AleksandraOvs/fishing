<?php if ($faq_items = carbon_get_post_meta(get_the_ID(), 'crb_faq_items')) {
?>
    <section class="section _faq-section" id="faq-section">
        <div class="fixed-container">

            <?php
            if ($why_head = carbon_get_post_meta(get_the_ID(), 'crb_faq_head')) {
            ?>
                <div class="section-title">
                    <?php
                    if ($head_desc = carbon_get_post_meta(get_the_ID(), 'crb_faq_desc')) {
                        echo '<p class="section-title__description fromOpacity">' . $head_desc . '</p>';
                    }
                    ?>
                    <h2 class="fromTop"><?php echo $why_head ?></h2>

                </div>
            <?php
            }
            ?>

            <div id="faq">
                <?php
                foreach ($faq_items as $faq_item) {
                ?>
                    <div class="faq-item">
                        <div class="faq-question-head" class="">
                            <h3><?php echo $faq_item['crb_faq_question'] ?></h3>
                            <div class="faq-marker">
                                <!-- <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1.5 6.5H11.5M6.5 11.5V1.5" stroke="#202020" stroke-width="1.5" stroke-linecap="round" />
                                </svg> -->

                            </div>
                        </div>
                        <div class="faq-answer">
                            <p><?php echo $faq_item['crb_faq_answer'] ?></p>
                        </div>
                    </div>

                <?php
                }
                ?>
            </div>
        </div>
    </section>
<?php
}

?>