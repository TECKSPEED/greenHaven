<?php
/*
Template Name: About Us
*/
global $post;


get_header(); ?>
<?php echo get_hero(); ?>
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