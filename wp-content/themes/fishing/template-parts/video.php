<section class="section promo__video-wrap">
    <div class="fixed-container">
<?php 

$gallery = carbon_get_post_meta(get_the_ID(), 'crb_hero_video' );

?>

<!-- <video class="promo__video" pip="false" video autoplay loop muted playsinline webkit-playinginline poster="<?php //echo get_stylesheet_directory_uri() . '/images/video/poseter.jpg'?>"> -->

<video class="promo__video" pip="false" controls video playsinline webkit-playinginline poster="<?php echo get_stylesheet_directory_uri() . '/images/poseter.jpg'?>">

<?php 
foreach( $gallery  as $v => $video){

  $video_url =  wp_get_attachment_url( $video );

  $this_ext = end(explode(".", $video_url));

echo '<source src="'.wp_get_attachment_url( $video ).'"' . 'type="video/' . $this_ext . ' " ' . '>'; 

}

?>

</video>

<div class="video-block__right">
    <?php 
        if ($video_block_text = carbon_get_post_meta(get_the_ID(), 'crb_video_text')){
            echo $video_block_text;
        }
    ?>
</div>
</div>
</section>