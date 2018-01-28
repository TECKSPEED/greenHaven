<?php
/**
Template Name: Contact Us
 */

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