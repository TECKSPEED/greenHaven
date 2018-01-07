<?php

function my_acf_google_map_api( $api ){

	$api['key'] = ' AIzaSyD4o2kOLRroPE8-mQkg4JoVFxOUtgA2gW0 ';

	return $api;

}

add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');

//Strains CPT
if ( ! function_exists('strains') ) {

// Register Custom Post Type
	function strains() {

		$labels = array(
			'name'                  => _x( 'Strains', 'Post Type General Name', 'text_domain' ),
			'singular_name'         => _x( 'Strain', 'Post Type Singular Name', 'text_domain' ),
			'menu_name'             => __( 'Strains', 'text_domain' ),
			'name_admin_bar'        => __( 'Strains', 'text_domain' ),
			'archives'              => __( 'Strains Archives', 'text_domain' ),
			'attributes'            => __( 'Strain Attributes', 'text_domain' ),
			'parent_item_colon'     => __( 'Parent Strain:', 'text_domain' ),
			'all_items'             => __( 'All Strains', 'text_domain' ),
			'add_new_item'          => __( 'Add New Strain', 'text_domain' ),
			'add_new'               => __( 'Add New Strain', 'text_domain' ),
			'new_item'              => __( 'New Strain', 'text_domain' ),
			'edit_item'             => __( 'Edit Strain', 'text_domain' ),
			'update_item'           => __( 'Update Strain', 'text_domain' ),
			'view_item'             => __( 'View Strain', 'text_domain' ),
			'view_items'            => __( 'View Strains', 'text_domain' ),
			'search_items'          => __( 'Search Strains', 'text_domain' ),
			'not_found'             => __( 'Not found', 'text_domain' ),
			'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
			'featured_image'        => __( 'Featured Image', 'text_domain' ),
			'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
			'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
			'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
			'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
			'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
			'items_list'            => __( 'Items list', 'text_domain' ),
			'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
			'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
		);
		$args = array(
			'label'                 => __( 'Strain', 'text_domain' ),
			'description'           => __( 'The current list of strains', 'text_domain' ),
			'labels'                => $labels,
			'supports'              => array( 'title', 'editor', 'thumbnail', 'custom-fields', 'page-attributes', 'revisions', 'excerpt' ),
			'hierarchical'          => false,
			'public'                => true,
			'show_ui'               => true,
			'show_in_menu'          => true,
			'menu_position'         => 20,
			'show_in_admin_bar'     => true,
			'show_in_nav_menus'     => false,
			'can_export'            => true,
			'has_archive'           => true,
			'exclude_from_search'   => false,
			'publicly_queryable'    => true,
			// This is where we add taxonomies to our CPT
			'taxonomies'          => array( 'post_tag' ),
			'capability_type'       => 'page',
		);
		register_post_type( 'strains', $args );

	}
	add_action( 'init', 'strains', 0 );

}

//Retailers CPT
if ( ! function_exists('Retailers') ) {

// Register Custom Post Type
	function Retailers() {

		$labels = array(
			'name'                  => _x( 'Retailers', 'Post Type General Name', 'text_domain' ),
			'singular_name'         => _x( 'Retailer', 'Post Type Singular Name', 'text_domain' ),
			'menu_name'             => __( 'Retailers', 'text_domain' ),
			'name_admin_bar'        => __( 'Retailers', 'text_domain' ),
			'archives'              => __( 'Retailers Archives', 'text_domain' ),
			'attributes'            => __( 'Retailer Attributes', 'text_domain' ),
			'parent_item_colon'     => __( 'Parent Retailer:', 'text_domain' ),
			'all_items'             => __( 'All Retailers', 'text_domain' ),
			'add_new_item'          => __( 'Add New Retailer', 'text_domain' ),
			'add_new'               => __( 'Add New Retailer', 'text_domain' ),
			'new_item'              => __( 'New Retailer', 'text_domain' ),
			'edit_item'             => __( 'Edit Retailer', 'text_domain' ),
			'update_item'           => __( 'Update Retailer', 'text_domain' ),
			'view_item'             => __( 'View Retailer', 'text_domain' ),
			'view_items'            => __( 'View Retailers', 'text_domain' ),
			'search_items'          => __( 'Search Retailers', 'text_domain' ),
			'not_found'             => __( 'Not found', 'text_domain' ),
			'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
			'featured_image'        => __( 'Featured Image', 'text_domain' ),
			'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
			'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
			'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
			'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
			'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
			'items_list'            => __( 'Items list', 'text_domain' ),
			'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
			'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
		);
		$args = array(
			'label'                 => __( 'Retailer', 'text_domain' ),
			'description'           => __( 'The current list of Retailers', 'text_domain' ),
			'labels'                => $labels,
			'supports'              => array( 'title', 'editor', 'thumbnail', 'custom-fields', 'page-attributes' ),
			'hierarchical'          => false,
			'public'                => true,
			'show_ui'               => true,
			'show_in_menu'          => true,
			'menu_position'         => 20,
			'show_in_admin_bar'     => true,
			'show_in_nav_menus'     => false,
			'can_export'            => true,
			'has_archive'           => true,
			'exclude_from_search'   => false,
			'publicly_queryable'    => true,
			// This is where we add taxonomies to our CPT
			'taxonomies'          => array( 'category' ),
			'capability_type'       => 'page',
		);
		register_post_type( 'Retailers', $args );

	}
	add_action( 'init', 'Retailers', 0 );

}

// GET FEATURED IMAGE
function ST4_get_featured_image($post_ID) {
	$post_featured =  get_field('featured_retailer', $post_ID);
	if ($post_featured) {
		return $post_featured;
	}
}
// ADD NEW COLUMN
function ST4_columns_head($defaults) {
	$defaults['featured_retailer'] = 'Featured Retailer';
	return $defaults;
}

// SHOW THE FEATURED IMAGE
function ST4_columns_content($column_name, $post_ID) {
	if ($column_name == 'featured_retailer') {
		$post_featured = get_field('featured_retailer', $post_ID);
		if ($post_featured) {
			echo  '<p><em>Featured</em></p>';
		}
		else {
		    echo 'Not Featured';
        }
	}
}

add_filter('manage_posts_columns', 'ST4_columns_head');
add_action('manage_posts_custom_column', 'ST4_columns_content', 10, 2);

function our_strains() { ?>
    <script>
        jQuery(document).ready(function(){
            jQuery('.strain-list-container').slick({
                arrows: false,
                autoplay: true,
                dots: false,
                pauseOnHover: true,
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 1,
                responsive: [
                    {
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 5,
                            slidesToScroll: 1,
                            pauseOnHover:  true,
                            infinite: true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 924,
                        settings: {
                            slidesToShow: 3,
                            pauseOnHover:  true,
                            arrows: false,
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 768,
                        settings: {
                            slidesToShow: 2,
                            pauseOnHover:  true,
                            arrows: false,
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 467,
                        settings: {
                            slidesToShow: 1,
                            dots: false,
                            arrows: false,
                            slidesToScroll: 1
                        }
                    }]
            });
        });
    </script>
	<div class="w-section our-strains">
		<div class="w-container">
            <div class="w-row">
                <h2 class="title-h2">Our Strains</h2>
                <div class="strain-list-container">
                    <?php
                    $args = array( 'post_type' => 'strains', 'posts_per_page' => -1 );
                    $loop = new WP_Query( $args );
                    while ( $loop->have_posts() ) : $loop->the_post(); ?>
                        <?php
                            $border_color = get_field('strain_color');
                        ?>
                        <div class="strain-container">
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
<?php }

function instafeed() { ?>
    <div class="instafeed"><?php echo do_shortcode('[instagram-feed]'); ?></div>
<?php }

function contactUs() { ?>
	<?php
		$button_link = get_field('button_link');
		$callout_button_text = get_field('callout_button_text');
		$callout_saying = get_field('callout_saying');
	?>
	<div class="w-section contact-us">
		<div class="w-container ">
			<div class="w-row">
				<div class="w-col w-col-12 contact-us-container">
					<p class="contact-us-p"><?php echo $callout_saying ?></p>
					<a href="<?php echo $button_link ?>" class="button"><?php echo $callout_button_text?></a>
				</div>
			</div>
		</div>
	</div>
<?php }

function weekly_retailer() { ?>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXYv1Bj5EBvwBpyI0nOPwnnwihbgqaMsY"></script>
    <script type="text/javascript" src="<?php echo get_template_directory_uri() . '/js/retailer-map.js' ?>"></script>
	<div class="w-section retailer-week">
        <div class="w-row">
            <div class="w-col w-col-12 retailer-week-container">
	            <?php query_posts(array(
		            'posts_per_page' => 1,
		            'post_type' => 'retailers',
		            'orderby' => 'post_date',
		            'meta_key' => 'featured_retailer', // the name of the custom field
		            'meta_compare' => '=', // the comparison (e.g. equals, does not equal, etc...)
		            'meta_value' => 1, // the value to which the custom field is compared. In my case, 'featured_product' was a true/false checkbox. If you had a custom field called 'color' and wanted to show only those blue items, then the meta_value would be 'blue'
		            'paged' => $paged
	            )); ?>
	            <?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
                <div class="w-col w-col-6 retailer-background retailer-half" style=" background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo get_the_post_thumbnail_url('', 'full'); ?>'); ">
                        <div class="w-section">
                            <div class="retailer-container">
                                <div id="post-<?php the_ID(); ?>" class="cpt">
                                    <h2 class="retailer-title"><?php the_title(); ?></h2>
                                    <p class="retailer-address"><?php echo get_field('retailer_address') ?></p>
                                    <div class="green-line"></div>
                                    <a href="tel:<?php echo get_field('retailer_phone_number'); ?>"><p class="retailer-phone"><?php echo get_field('retailer_phone_number'); ?></p></a>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="w-col w-col-6 retailer-half">
                    <?php
	                $location = get_field('retailer_location');
	                if( !empty($location) ): ?>
                        <div class="acf-map">
                            <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
                        </div>
	                <?php endif; ?>
                </div>
	            <?php endwhile; ?>
	            <?php wp_reset_query(); ?>
            </div>
        </div>
	</div>
<?php }

add_filter( 'wp_nav_menu_items', 'wholesale_menu_item', 10, 2 );
function wholesale_menu_item ( $items, $args ) {
	if ($args->theme_location == 'primary') {
		$items .= '<li class="menu-item menu-item-type-post_type menu-item-object-page wholesale"><a href="">Wholesale</a></li>';
	}
	return $items;
}

function tags_filter() {
	$tax = 'post_tag';
	$terms = get_terms( $tax );
	$count = count( $terms );

	echo '<div class="strain-filter-button"><a href="' . $term_link . '" class="tax-filter active" title="all">All Strains</a></div>';

	if ( $count > 0 ):
        foreach ( $terms as $term ) {
            $term_link = get_term_link( $term, $tax );
            echo '<div class="strain-filter-button"><a href="' . $term_link . '" class="tax-filter" title="' . $term->slug . '">' . $term->name . '</a></div> ';
        }
	endif;
}

// Script for getting posts
function ajax_filter_get_posts( $taxonomy ) {

	// Verify nonce
	if( !isset( $_POST['afp_nonce'] ) || !wp_verify_nonce( $_POST['afp_nonce'], 'afp_nonce' ) )
		die('Permission denied');

	// WP Query
	$args = array(
		'tag' => $_POST['taxonomy'],
		'post_type' => 'strains',
		'posts_per_page' => 10,
	);

	$query = new WP_Query( $args );

	if ( $query->have_posts() ) : while ( $query->have_posts() ) : $query->the_post();
		$border_color = get_field('strain_color'); ?>
        <div class="strain-list-container">
            <div class="w-col w-col-3 strain-container">
                <a href="<?php echo get_permalink() ?>">
                    <div class="slide-content">
                        <img class="strain-image" style="background-color: #<?php echo $border_color ?>; border: 5px solid #<?php echo $border_color ?>;" src="<?php echo the_post_thumbnail_url('thumbnail') ?>">
                        <p class="strain-title"><?php the_title(); ?></p>
                    </div>
                </a>
            </div>
        </div>
	<?php endwhile; ?>

	<?php else: //get all posts?>
        <div class="strain-list-container">
			<?php
			$args = array( 'post_type' => 'strains', 'posts_per_page' => -1 );
			$loop = new WP_Query( $args );
			while ( $loop->have_posts() ) : $loop->the_post(); ?>
				<?php
				$border_color = get_field('strain_color');
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
	<?php endif;

	die();
}

add_action('wp_ajax_filter_posts', 'ajax_filter_get_posts');
add_action('wp_ajax_nopriv_filter_posts', 'ajax_filter_get_posts');

function get_hero() {
	//* ADVANCED CUSTOM FIELDS
	$hero_title	= get_field('hero_title');
	$hero_supporting_text = get_field('hero_supporting_text');
	$button_link = get_field('button_link');
	$button_text = get_field('button_text');
    global $post;
    $src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' ); ?>
    <div class="w-section home-main" style="  background-color: #00573c;
            background-image: -webkit-linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo $src[0]; ?>');
            background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo $src[0]; ?>');
            background-size: auto, cover;
            background-repeat: repeat, no-repeat;
            background-position: center center;" >
        <div class="w-container hero-container animated fadeInUp">
            <h1 class="hero-h1"><?php echo $hero_title; ?></h1>
            <p class="hero-supporting-text"><?php echo $hero_supporting_text; ?></p>
            <?php if (!($button_text == "")) {?>
                <a class="button" href="<?php echo $button_link; ?>"><?php echo $button_text; ?></a>
            <?php } ?>
        </div>
    </div>
<?php }

function get_product_hero() {
    global $post;
    $src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' ); ?>
    <div class="w-section product-main" style="  background-color: #00573c;
            background-image: -webkit-linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo $src[0]; ?>');
            background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo $src[0]; ?>');
            background-size: auto, cover;
            background-repeat: repeat, no-repeat;
            background-position: center center;" >
        <div class="w-container product-hero-container animated fadeInUp">
            <?php
                $posttags = get_the_tags();
                $count=0;
                if ($posttags) {
                    foreach($posttags as $tag) {
                        $count++;
                        if (1 == $count) { ?>
                            <h1 class="product-hero-h1"><?php echo $tag->name; ?></h1>
                        <?php }
                    }
                }
            ?>
        </div>
    </div>
<?php }

function add_featured_galleries_to_ctp( $post_types ) {
	//array_push($post_types, 'strains');
    return array('strains');
}
add_filter('fg_post_types', 'add_featured_galleries_to_ctp' );

