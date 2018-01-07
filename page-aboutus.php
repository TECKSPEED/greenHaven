<?php
/*
Template Name: About Us
*/
global $post;

//* ADVANCED CUSTOM FIELDS
$hero_title	= get_field('hero_title');
$hero_supporting_text = get_field('hero_supporting_text');
$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );

get_header(); ?>
<div class="w-section home-main" style="  background-color: #00573c;
	background-image: -webkit-linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo $src[0]; ?>');
	background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo $src[0]; ?>');
	background-size: auto, cover;
	background-repeat: repeat, no-repeat;
	background-position: center center;" >
	<div class="w-container hero-container">
		<h1 class="hero-h1"><?php echo $hero_title; ?></h1>
		<p class="hero-supporting-text"><?php echo $hero_supporting_text; ?></p>
		<?php if (!($button_text == "")) {?>
            <a class="button" href="<?php echo $button_link; ?>"><?php echo $button_text; ?></a>
		<?php } ?>
	</div>
</div>
<div class="breadcrumb-container">
	<div class="w-container breadcrumbs">
		<?php breadcrumbs(); ?>
	</div>
</div>
<div class="w-section action-menu">
	<div class="w-container subpage-container">
		<div class="w-container">
			<div class="w-row">
				<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
						<?php the_content('Read the rest of this entry »'); ?>
					<?php endwhile; ?>
				<?php else : ?>
					//Something that happens when a post isn’t found.
				<?php endif; ?>
				<div class="w-col w-col-6">

				</div>
				<div class="w-col w-col-6">
					<div id="map" style="height: 400px; width: 100%;"></div>
					<script>
		                function initMap() {
		                    var loc = {lat: -25.363, lng: 131.044};
		                    var map = new google.maps.Map(document.getElementById('map'), {
		                        zoom: 4,
		                        center: loc
		                    });
		                    var marker = new google.maps.Marker({
		                        position: loc,
		                        map: map
		                    });
		                }
					</script>

				</div>
			</div>
		</div>
	</div>
</div>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2qDhNaFQeudfS6BBgAuXu7qK-g4HIUyc&callback=initMap">
</script>

<?php
get_footer();