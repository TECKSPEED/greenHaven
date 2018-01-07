<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package greenHaven
 */
get_header(); ?>

<?php global $post; ?>
<?php
$src = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), array(5600, 1000), false, '');
?>
    <div class="w-section home-main sub-main" style="background-color: #00573c;
        background-image: -webkit-linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('http://greenHavenfireservices.com/wp-content/uploads/2016/08/firefighter-training-e1471117407328.jpg');
        background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('http://greenHavenfireservices.com/wp-content/uploads/2016/08/firefighter-training-e1471117407328.jpg');
        background-position: 0% 0%, 0px 38%; background-size: cover;">
        <div class="w-container hero-container sub-hero-container">
            <h1 class="hero-h1"><?php the_title(); ?></h1>
            <p class="hero-supporting-text"><?php echo $heroSupportText ?></p>
        </div>
    </div>

    <div class="w-section action-menu">
    <div class="w-container subpage-container">
        <h3 style="text-align: center; color: #333;">Looks like we've run out of water! Try another page!</h3>
        <!--<div class="content-cta-container">
        <div class="cta-block">
          <h3 class="cta-block-h3"><?php /*echo $inner_cta_header; */ ?></h3>
          <p class="cta-text"><?php /*echo $inner_cta_body; */ ?></p><a class="button blue" href="<?php /*echo $inner_cta_link; */ ?>">Get Lessons</a>
        </div>
        <?php /*echo $body_copy; */ ?>
      </div>-->
    </div>
<?php get_footer(); ?>