<?php
/**
 * The template for displaying all single posts.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package greenHaven
 */

get_header();
get_product_hero(); ?>
<div class="w-section action-menu">
	<div class="breadcrumb-container">
		<div class="w-container breadcrumbs">
			<?php breadcrumbs(); ?>
		</div>
	</div>
	<div class="w-container subpage-container">
		<?php
		while ( have_posts() ) : the_post(); ?>
			<div class="w-row">
				<div class="w-col w-col-6 w-col-small-12 pull-left">
                    <?php
                    $args = array(
                    'width'        => '100%',
                    'height'       => '400px',
                    'zoom'         => 14,
                    'marker'       => true,
                    'marker_title' => 'Click me',
                    'info_window'  => '<h3>Title</h3><p>Content</p>.',
                    );
                    echo rwmb_meta( 'retailer_map_location', $args );
                    ?>
                </div>
				<div class="w-col w-col-6">
					<h2 class="title-h2"><?php echo the_title(); ?></h2>
					<div class="w-row retailer-attributes">
						<div class="w-col w-col-6 website">
							<i class="fa fa-2x fa-globe"></i>
							<a href="http://<?php echo rwmb_meta('retailer_website'); ?>" target="_blank"><p><?php echo rwmb_meta('retailer_website'); ?></p></a>
						</div>
						<div class="w-col w-col-6 phone-number">
							<i class="fa fa-2x fa-phone"></i>
							<a href="tel:<?php echo rwmb_meta('retailer_phone_number'); ?>"><p><?php echo rwmb_meta('retailer_phone_number'); ?></p></a>
						</div>
					</div>
					<?php echo the_content(); ?>
					<div class="strain-tags">
						<?php echo the_tags('Tagged: ', ', '); ?>
					</div>
				</div>
			</div>
			<div class="w-row">
				<div class="w-col w-col-12 strain-chart-container">

				</div>
			</div>
		<?php endwhile; ?>
	</div>

	<?php get_footer(); ?>
