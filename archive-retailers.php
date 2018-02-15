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
		<!-- <div class="w-row">
			<div class="strain-list-container">
				<?php
				$args = array( 'post_type' => 'retailers', 'posts_per_page' => -1 );
				$loop = new WP_Query( $args );
				while ( $loop->have_posts() ) : $loop->the_post(); ?>
					<div class="w-col w-col-3 retailer-container">
						<a href="<?php echo get_permalink() ?>">
							<div class="slide-content">
								<img class="retailer-image" src="<?php echo the_post_thumbnail_url('thumbnail') ?>">
								<p class="retailer-title"><?php the_title(); ?></p>
							</div>
						</a>
					</div>
				<?php endwhile; ?>
			</div>
			<?php wp_reset_query(); ?>
		</div> -->
		<div class="w-row">
			<?php echo do_shortcode('[wpsl]') ?>
		</div>
	</div>
</div>
<?php get_footer(); ?>