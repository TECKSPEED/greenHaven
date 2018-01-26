<?php
/**
Template Name: Contact Us
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
                <?php echo the_content(); ?>
                <div class="w-row">
                    <div class="w-col w-col-12">
                <?php echo do_shortcode('[contact-form-7 id="172" title="Contact form 1"]'); ?></div></div>
            <?php endwhile; ?>
        <?php endif; ?>
    </div>
<?php get_footer(); ?>