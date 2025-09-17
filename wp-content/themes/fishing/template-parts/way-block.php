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

            <div class="hivus-block" style="margin-top: 10vh;">
                <div class="hivus-block__left">
                    <div class="section-title white-text">
                        <p class="section-title__description fromOpacity">Судно навоздушной подушке</p>
                        <h2 class="fromTop">Трансфер на хивусах</h2>
                    </div>

                    <div class="text-block">— это более комфортный и продуманный вариант логистики по сравнению с обычными лодками</div>

                    <p class="white-text">Использование судов на воздушной подушке (Хивус-10) вместо обычных лодок делает передвижение по сибирским рекам и протокам значительно более комфортным, безопасным и универсальным. </p>

                    <div class="text-block">
                        И вот почему:
                    </div>

                    <ul class="hivus-list">
                        <li class="hivus-list__item fromBottom">
                            <h4>Быстрее и стабильнее</h4>
                            <p>Хивус развивает большую скорость, чем классические лодки, и не зависит от течения, мели, затопленных деревьев и перекатов.</p>
                            <p>С ним вы гарантированно доберётесь до базы по расписанию, даже если уровень воды в реке нестабилен.</p>
                        </li>

                        <li class="hivus-list__item fromBottom">
                            <h4>Не боится мелей и зарослей</h4>
                            <p>Хивус "скользит" над поверхностью — не требуется глубина.</p>
                            <p>Он спокойно проходит там, где лодки вынуждены останавливаться или теряют скорость.</p>
                        </li>

                        <li class="hivus-list__item fromBottom">
                            <h4>Комфорт и сухость</h4>
                            <p>Просторная закрытая кабина защищает от ветра, дождя и брызг.</p>
                            <p>Меньше вибрации и качки, не мёрзнут руки и ноги — особенно важно в холодную погоду.</p>
                        </li>

                        <li class="hivus-list__item fromBottom">
                            <h4>Безопасность</h4>
                            <p>Устойчивость, защищённые винты и надёжная конструкция делают Хивус безопасным даже для людей без опыта в подобных путешествиях.</p>
                        </li>

                        <li class="hivus-list__item fromBottom">
                            <h4>Меньше шума — больше природы</h4>
                            <p>Двигатель Хивуса тише, чем у большинства моторных лодок. Это значит — меньше шума, больше шансов увидеть дикую природу и не распугать рыбу.</p>
                        </li>
                    </ul>



                </div>

                <div class="hivus-block__right">
                    <img src="<?php echo get_stylesheet_directory_uri() . '/images/hivus.jpg' ?>" alt="Трансфер на хивусах">
                    <div class="hivus-block__right__bottom">
                        <div class="text-block">
                            Вы добираетесь быстрее, сухими, без встрясок, и в любое время года — даже когда лодки не могут идти. Это не просто транспорт — это часть удовольствия от поездки.
                        </div>
                        <?php
                        if ($endtext = carbon_get_post_meta(get_the_ID(), 'crb_way_end_text')) {
                        ?>
                            <div class="text-block">
                                <?php echo $endtext ?>
                            </div>
                        <?php
                        }
                        ?>
                    </div>

                </div>


            </div>
        <?php
        }
        ?>
    </div>
</section>