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
			<div class="strain-list-container">
				<?php
				$args = array( 'post_type' => 'retailers', 'posts_per_page' => -1 );
				$loop = new WP_Query( $args );
				while ( $loop->have_posts() ) : $loop->the_post(); ?>

						<a href="<?php echo get_permalink() ?>" class="retailer-container">
                            <div class="w-col w-col-3 retailer-container">
                                <div class="slide-content">
                                    <img class="retailer-image" style="background-color: #<?php echo $border_color ?>; border: 5px solid #<?php echo $border_color ?>;" src="<?php echo the_post_thumbnail_url('thumbnail') ?>">
                                    <p class="retailer-title"><?php the_title(); ?></p>
                                </div>
                            </div>
						</a>
				<?php endwhile; ?>
			</div>
			<?php wp_reset_query(); ?>
            <?php echo do_shortcode('[wpsl]'); ?>
		</div>
	</div>
</div>
<?php get_footer(); ?>