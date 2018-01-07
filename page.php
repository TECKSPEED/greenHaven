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

$body_copy_below_cta = get_field('body_below_cta');
$showCTAbox = get_field('show_cta_box');
$heroSupportText = get_field('hero_line');

$calloutTitle = get_field('callout_title');
$calloutText = get_field('callout_text');
$calloutCTAtitle = get_field('callout_cta_title');
$calloutLink = get_field('callout_link');


get_header();
get_hero(); ?>
    <div class="w-section action-menu">
    <div class="breadcrumb-container">
        <div class="w-container breadcrumbs">
            <?php breadcrumbs(); ?>
        </div>
    </div>
    <div class="w-container subpage-container">
        <?php if (have_posts()) : ?>
            <?php while (have_posts()) : the_post(); ?>
                <?php the_content('Read the rest of this entry »'); ?>
                <?php if ($showCTAbox = get_field('show_cta_box')) { ?>
                    <div class="cta-block">
                        <h3 class="cta-block-h3"><?php echo $calloutTitle ?></h3>
                        <p class="cta-text"><?php echo $calloutText ?></p>
                        <div class="button-container">
                            <a class="button red featured-cta-button" href="<?php echo $calloutLink ?>" target="_blank"><?php echo $calloutCTAtitle ?></a>
                        </div>
                    </div>
                <?php } ?>

                <?php echo $body_copy_below_cta ?>
            <?php endwhile; ?>
        <?php endif; ?>
        <!--<div class="content-cta-container">
        <div class="cta-block">
          <h3 class="cta-block-h3"><?php /*echo $inner_cta_header; */ ?></h3>
          <p class="cta-text"><?php /*echo $inner_cta_body; */ ?></p><a class="button blue" href="<?php /*echo $inner_cta_link; */ ?>">Get Lessons</a>
        </div>
        <?php /*echo $body_copy; */ ?>
      </div>-->
    </div>
<?php get_footer(); ?>