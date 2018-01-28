<?php
/*
 * Template Name: Our Products
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
        <div class="w-row strains-filters">
            <h2 class="title-h2">Filter by Type</h2>
            <?php  echo tags_filter() ?>
        </div>
		<div class="w-row">
			<div class="strain-list-container">
				<?php
				$args = array( 'post_type' => 'strains', 'posts_per_page' => -1 );
				$loop = new WP_Query( $args );
				while ( $loop->have_posts() ) : $loop->the_post(); ?>
					<?php
					$border_color = rwmb_meta('strain_color');
					?>
					<div class="w-col w-col-3 strain-container">
						<a href="<?php echo get_permalink() ?>">
							<div class="slide-content">
								<img class="strain-image" style="background-color: #<?php echo $border_color ?>; border: 5px solid #<?php echo $border_color ?>;" src="<?php echo the_post_thumbnail_url('thumbnail') ?>">
								<p class="strain-title"><?php the_title(); ?></p>
							</div>
						</a>
					</div>
				<?php endwhile; ?>
			</div>
			<?php wp_reset_query(); ?>
		</div>
	</div>
</div>
<?php get_footer(); ?>