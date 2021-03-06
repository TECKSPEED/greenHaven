<?php

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
			'menu-icon'             => 'dashicons-palmtree',
			// This is where we add taxonomies to our CPT
			'taxonomies'          => array( 'post_tag' ),
			'capability_type'       => 'page',
		);
		register_post_type( 'strains', $args );

	}
	add_action( 'init', 'strains', 0 );

}

function straininformation( $meta_boxes ) {
	$prefix = '';

	$meta_boxes[] = array(
		'id' => 'straininformation',
		'title' => esc_html__( 'Strain Information', 'greenHaven' ),
		'post_types' => array( 'strains' ),
		'context' => 'side',
		'priority' => 'default',
		'autosave' => true,
		'fields' => array(
			array(
				'id' => $prefix . 'aroma',
				'type' => 'text',
				'name' => esc_html__( 'Aroma', 'greenHaven' ),
				'desc' => esc_html__( 'Enter the Aroma this strain gives off', 'greenHaven' ),
				'placeholder' => esc_html__( 'Grape and Berry', 'greenHaven' ),
			),
			array(
				'id' => $prefix . 'lineage',
				'type' => 'text',
				'name' => esc_html__( 'Lineage', 'greenHaven' ),
				'desc' => esc_html__( 'Enter the Lineage of the strain (aka the two parent strains used to create this strain) )', 'greenHaven' ),
			),
			array(
				'id' => $prefix . 'straincolor',
				'name' => esc_html__( 'Strain Color', 'greenHaven' ),
				'type' => 'select',
				'desc' => esc_html__( 'Choose whether this strain is an Indica, Sativa, or a hybrid', 'greenHaven' ),
				'placeholder' => esc_html__( 'Select an Item', 'greenHaven' ),
				'options' => array(
					'789bd1' => 'Indica',
					'e97777' => 'Sativa',
					'bd77e9' => 'Hybrid',
				),
			),
			array(
				'id' => $prefix . 'straineffect',
				'type' => 'text',
				'name' => esc_html__( 'Strain Effects', 'greenHaven' ),
				'desc' => esc_html__( 'Add the effects of the strain followed by the percentage of how strong the effect can be. The first effect maps directly to the first percentage and so on. This is used to generate the horizontal bar chart on a single strain page', 'greenHaven' ),
				'clone' => true,
				'max_clone' => 10,
				'add_button' => esc_html__( 'Next Effect', 'greenHaven' ),
			),
			array(
				'id' => $prefix . 'straineffectpercentage',
				'type' => 'text',
				'name' => esc_html__( 'Strain Effect Percentage', 'greenHaven' ),
				'desc' => esc_html__( 'The percentage of how strong the strain effect can be', 'greenHaven' ),
				'clone' => true,
				'max_clone' => 10,
				'add_button' => esc_html__( 'Next Percentage', 'greenHaven' ),
			),
		),
	);

	return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'straininformation' );

function hero_information( $meta_boxes ) {
	$prefix = 'prefix-';

	$meta_boxes[] = array(
		'id' => 'hero',
		'title' => esc_html__( 'Hero Information', 'metabox-online-generator' ),
		'post_types' => array( 'page' ),
		'context' => 'side',
		'priority' => 'default',
		'autosave' => false,
		'fields' => array(
			array(
				'id' => $prefix . 'hero_title',
				'type' => 'text',
				'name' => esc_html__( 'Hero Title', 'metabox-online-generator' ),
				'desc' => esc_html__( 'Enter a hero title here. If left blank the page title will be used', 'metabox-online-generator' ),
			),
			array(
				'id' => $prefix . 'hero_supporting_text',
				'type' => 'textarea',
				'name' => esc_html__( 'Hero Supporting Text', 'metabox-online-generator' ),
				'desc' => esc_html__( 'Enter a short sentance about the page or some other relevant context', 'metabox-online-generator' ),
			),
			array(
				'id' => $prefix . 'button_text',
				'type' => 'text',
				'name' => esc_html__( 'Button Text', 'metabox-online-generator' ),
				'desc' => esc_html__( 'What woudl you like the button to say?', 'metabox-online-generator' ),
			),
			array(
				'id' => $prefix . 'button_link',
				'type' => 'post',
				'name' => esc_html__( 'Button Link', 'metabox-online-generator' ),
				'post_type' => 'page',
				'field_type' => 'select',
			),
		),
	);

	return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'hero_information' );

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
                            $border_color = rwmb_meta('straincolor');
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
		$button_link = rwmb_meta('button_link');
		$callout_button_text = rwmb_meta('callout_button_text');
		$callout_saying = rwmb_meta('callout_saying');
	?>
	<div class="w-section contact-us">
		<div class="w-container ">
			<div class="w-row">
				<div class="w-col w-col-12 contact-us-container">
					<p class="contact-us-p"><?php echo $callout_saying ?></p>
					<a href="<?php echo get_page_link($button_link) ?>" class="button"><?php echo $callout_button_text?></a>
				</div>
			</div>
		</div>
	</div>
<?php }

function weekly_retailer() { ?>
	<div class="w-section retailer-week">
        <div class="w-row">
            <div class="w-col w-col-12 retailer-week-container">
	            <?php query_posts(array(
		            'posts_per_page' => 1,
		            'post_type' => 'wpsl_stores',
		            'orderby' => 'rand'
	            )); ?>
	            <?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
                <div class="w-col w-col-6 featured-retailer-background retailer-half">
                        <div class="w-section">
                            <div class="retailer-container">
<<<<<<< HEAD
                                <div id="post-<?php the_ID(); ?>" class="cpt">
                                    <h2 class="featured-retailer-title"><?php the_title(); ?></h2>
                                    <?php
                                        $address = str_replace(array(' ', ','), array('+', ''), rwmb_meta('retailer_address'));
                                    ?>
                                    <a href="https://www.google.com/maps/dir/?api=1&destination=<?php echo $address ?>" target="_blank">
                                        <p class="featured-retailer-address"><?php echo rwmb_meta('retailer_address') ?></p>
                                    </a>
                                    <div class="green-line"></div>
                                    <a href="tel:<?php echo rwmb_meta('retailer_phone_number'); ?>">
                                        <p class="featured-retailer-phone"><?php echo rwmb_meta('retailer_phone_number'); ?></p>
                                    </a>
=======
                                <div class="retailer-information-container">
                                    <div class="w-col w-col-12"><h2 class="featured-retailer-title"><?php the_title(); ?></h2></div>
                                    <div class="w-col w-col-12 retailer-details">
                                        <div class="featured-retailer-address-container">
                                            <?php
                                                $streetAddress = get_post_meta( get_the_ID(), 'wpsl_address', TRUE );
                                                $city = get_post_meta( get_the_ID(), 'wpsl_city', TRUE );
                                                $state = get_post_meta( get_the_ID(), 'wpsl_state', TRUE );
                                                $zip = get_post_meta( get_the_ID(), 'wpsl_zip', TRUE );
                                                $phone = get_post_meta( get_the_ID(), 'wpsl_phone', TRUE );
                                            ?>
                                            <a href=""><p class="featured-retailer-address"><?php echo $streetAddress; ?><br />
                                            <?php echo $city . ', ' . $state . ' ' . $zip ?></p></a>
                                        </div>
                                        <div class="green-line"></div>
                                        <a href="tel:<?php echo $phone ?>"><p class="featured-retailer-phone"><?php echo $phone ?></p></a>
                                    </div>
>>>>>>> 7631ee321c94e7e92c095a5f29a3be0cd77112d1
                                </div>
                            </div>
                        </div>
                </div>
                <div class="w-col w-col-6 retailer-half">
                    <?php echo do_shortcode('[wpsl_map]'); ?>
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
		$border_color = rwmb_meta('strain_color'); ?>
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
	<?php endif;

	die();
}

add_action('wp_ajax_filter_posts', 'ajax_filter_get_posts');
add_action('wp_ajax_nopriv_filter_posts', 'ajax_filter_get_posts');

function get_hero() {

	$hero_title = rwmb_meta( 'prefix-hero_title' );
	$hero_supporting_text = rwmb_meta( 'prefix-hero_supporting_text' );
	$button_link = rwmb_meta( 'prefix-button_link' );
	$button_text = rwmb_meta( 'prefix-button_text' );

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
                <a class="button" href="<?php echo get_page_link($button_link); ?>"><?php echo $button_text; ?></a>
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
                } else { ?>
                    <h1 class="product-hero-h1"><?php echo the_title(); ?></h1>
                <?php }
            ?>
        </div>
    </div>
<?php }

function add_featured_galleries_to_ctp( $post_types ) {
	//array_push($post_types, 'strains');
    return array('strains');
}
add_filter('fg_post_types', 'add_featured_galleries_to_ctp' );

function featured_retailer( $meta_boxes ) {
	$prefix = '';

	$meta_boxes[] = array(
		'id' => 'featured_retailer',
		'title' => esc_html__( 'Featured Retailer', 'Featured Retailer' ),
		'post_types' => array( 'retailers' ),
		'context' => 'side',
		'priority' => 'default',
		'autosave' => false,
		'fields' => array(
			array(
				'id' => $prefix . 'featured_retailer',
				'name' => esc_html__( 'Featured Retailer', 'Featured Retailer' ),
				'type' => 'checkbox',
				'desc' => esc_html__( 'Check this to make this your retailer of the week', 'Featured Retailer' ),
			),
		),
	);

	return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'featured_retailer' );

function retailer_information( $meta_boxes ) {

	$meta_boxes[] = array(
		'id' => 'retailer_information',
		'title' => esc_html__( 'Retailer Information', 'metabox-online-generator' ),
		'post_types' => array( 'retailers' ),
		'context' => 'normal',
		'priority' => 'default',
		'autosave' => false,
		'fields' => array(
			array(
				'id' => 'retailer_address',
				'type' => 'textarea',
				'name' => esc_html__( 'Retailer Address', 'metabox-online-generator' ),
			),
			array(
				'id' => 'retailer_phone_number',
				'type' => 'text',
				'name' => esc_html__( 'Retailer Phone Number', 'metabox-online-generator' ),
				'desc' => esc_html__( 'Enter the phone number for the retailer', 'metabox-online-generator' ),
			),
			array(
				'id' => 'retailer_website',
				'type' => 'text',
				'name' => esc_html__( 'Retailer Website', 'metabox-online-generator' ),
				'desc' => esc_html__( 'Enter the website for the retailer', 'metabox-online-generator' ),
			),
			array(
				'id' => 'location_address',
				'type' => 'text',
				'name' => esc_html__( 'Retailer Address', 'metabox-online-generator' ),
			),
			array(
				'id' => 'retailer_map_location',
				'type' => 'map',
				// Default location: 'latitude,longitude[,zoom]' (zoom is optional)
				'name' => esc_html__( 'Retailer Location', 'metabox-online-generator' ),
				'address_field' => 'location_address',
				'api_key' => 'AIzaSyDpcZgS4o3JAwJud1noPdSBVaDOAU9v3TU',
			),
		),
	);

	return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'retailer_information' );

