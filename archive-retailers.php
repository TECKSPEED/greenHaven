<?php
/*
 * Template Name: Retailers
 */
get_header();
get_hero(); ?>
<div class="breadcrumb-container">
    <div class="w-container breadcrumbs">
        <?php breadcrumbs(); ?>
    </div>
</div>
<div class="w-section our-strains">
	<div class="w-container">
		<div class="w-row">
			<?php echo do_shortcode('[wpsl]') ?>
		</div>
	</div>
</div>
<?php get_footer(); ?>