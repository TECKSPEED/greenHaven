<?php
/**
 * greenHaven functions and definitions.
 *
 * @link https://codex.wordpress.org/Functions_File_Explained
 *
 * @package greenHaven
 */
include('greenhaven-functions.php');

if ( ! function_exists( 'greenHaven_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function greenHaven_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on greenHaven, use a find and replace
	 * to change 'greenHaven' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'greenHaven', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary Menu', 'greenHaven' ),
		'utility' => __( 'Utility Menu', 'Utility ' ),
		'footer-column-1' => __('Footer Column 1', 'Footer Column 1'),
		'footer-column-2' => __('Footer Column 2', 'Footer Column 2'),
		'footer-column-3' => __('Footer Column 3', 'Footer Column 3'),
		'subnav' => __( 'Sub Nav' ),
	) );
	add_action('wp_enqueue_scripts', 'cssmenumaker_scripts_styles' ); function cssmenumaker_scripts_styles() {
   #wp_enqueue_style( 'cssmenu-styles', get_template_directory_uri() . '/cssmenu/styles.css');
}
	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See https://developer.wordpress.org/themes/functionality/post-formats/
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'greenHaven_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif; // greenHaven_setup
add_action( 'after_setup_theme', 'greenHaven_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function greenHaven_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'greenHaven_content_width', 640 );
}
add_action( 'after_setup_theme', 'greenHaven_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function greenHaven_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'greenHaven' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'greenHaven_widgets_init' );


function breadcrumbs() {
		$post_ID = get_queried_object_id();
		$title = get_the_title();
		$ancestors = get_ancestors($post_ID, 'page');
		$r_ancestor = array_reverse($ancestors);
		$count = count($ancestors); ?>
			
		<ul class="w-hidden-small w-hidden-tiny breadcrumb">
			<!-- homepage -->
			<li class="breadcrumb-item breadcrumb-home">
				<a class="breadcrumb-link" href="<?php echo site_url(); ?>">&#xf015;</a>
			</li>
				
			<!-- parent items -->
	  <?php foreach($r_ancestor as $key => $ancestor){ ?>
		<?php if($key > 0) { ?>
				<li class="breadcrumb-item breadcrumb-separator">&#xf105;</i></li>
				<li class="breadcrumb-item">
					<a class="breadcrumb-link" href="<?php echo get_permalink($ancestor)?>"><?php echo get_the_title($ancestor)?></a>
				</li>
		<?php } ?>
	  <?php } ?>
	  
		    <!-- last item  -->
		    <li class="breadcrumb-item breadcrumb-separator">&#xf105;</i></li>
		    <li class="breadcrumb-item">
			    <a class="breadcrumb-link" href="<?php echo get_permalink($post_ID)?>"><?php echo $title;?></a>
		    </li>
		</ul>
<?php } 

add_theme_support( 'post-thumbnails' );
set_post_thumbnail_size( 250, 250 );

	add_filter("manage_feature_edit_columns", "feature_edit_columns");

	function feature_edit_columns($feature_columns){
	   $feature_columns = array(
	      "cb" => "<input type=\"checkbox\" />",
	      "title" => "Title",
	   );
	  return $feature_columns;
	}
	

	add_action( 'add_meta_boxes', 'cd_meta_box_add' );
	function cd_meta_box_add()
	{
		add_meta_box( 'my-meta-box-id', 'Link to Project', 'cd_meta_box_cb', 'feature', 'normal', 'high' );
	}

	function cd_meta_box_cb( $post )
	{
		$url = get_post_meta($post->ID, 'url', true);
		wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' ); ?>

		<p>
			<label for="url">Project url</label>
			<input type="text" name="url" id="url" value="<?php echo $url; ?>" style="width:350px" />
		</p>

		<?php	
	}
	
	add_action( 'save_post', 'cd_meta_box_save' );
	function cd_meta_box_save( $post_id )
	{
		// Bail if we're doing an auto save
		if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;

		// if our nonce isn't there, or we can't verify it, bail
		if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;

		// if our current user can't edit this post, bail
		if( !current_user_can( 'edit_post' ) ) return;

		// now we can actually save the data
		$allowed = array( 
			'a' => array( // on allow a tags
				'href' => array() // and those anchors can only have href attribute
			)
		);

		// Probably a good idea to make sure your data is set
		if( isset( $_POST['url'] ) )
			update_post_meta( $post_id, 'url', wp_kses( $_POST['url'], $allowed ) );
	}
	
	function blm2016_init_method() {
    wp_enqueue_script('jquery');
    #wp_enqueue_script( 'slides', get_template_directory_uri().'/js/slides.min.jquery.js', array( 'jquery' ) );

}
add_action('wp_enqueue_scripts', 'blm2016_init_method');

/**
 * Enqueue scripts and styles.
 */
function greenHaven_scripts() {
	global $wp_query;

    wp_enqueue_style( 'greenHaven-style', get_stylesheet_uri() );

	wp_enqueue_style( 'slick-slider-styles', get_stylesheet_directory_uri() . '/assets/css/slick.css' );

	wp_enqueue_style( 'animate', get_stylesheet_directory_uri() . '/assets/css/animate.css' );

	wp_enqueue_style( 'slick-slider-theme', get_stylesheet_directory_uri() . '/assets/css/slick-theme.css' );

	wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/jquery.min.js', array(  ), '3.2.1', true );

	wp_enqueue_script( 'main', get_template_directory_uri() . '/js/main.js', array('jquery'), null, true );

	wp_enqueue_script( 'greenHaven-navigation', get_template_directory_uri() . '/js/navigation.js', array(), null, true );

	wp_enqueue_script( 'greenHaven-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), null, true );

	wp_enqueue_script( 'map', get_template_directory_uri() . '/js/map.js', array(), null, true );

	wp_enqueue_script( 'matchHeight', get_template_directory_uri() . '/js/jquery.matchHeight-min.js', array(), null, true );

	wp_enqueue_script( 'ageCheck', get_template_directory_uri() . '/js/jquery.agecheck.js', array(), null, true );

	wp_enqueue_script( 'swipebox', get_template_directory_uri() . '/js/jquery.swipebox.min.js', array(), null, true );

	function ajax_filter_posts_scripts() {
		// Enqueue script
		wp_register_script('afp_script', get_template_directory_uri() . '/js/ajax-filter-posts.js', false, null, false);
		wp_enqueue_script('afp_script');

		wp_localize_script( 'afp_script', 'afp_vars', array(
				'afp_nonce' => wp_create_nonce( 'afp_nonce' ), // Create nonce which we later will use to verify AJAX request
				'afp_ajax_url' => admin_url( 'admin-ajax.php' ),
			)
		);
	}
	add_action('wp_enqueue_scripts', 'ajax_filter_posts_scripts', 100);

	wp_enqueue_script( 'photoswipe-ui', get_template_directory_uri() . '/js/jquery.photoswipe-ui-default.min.js', array('jquery', 'afp_script'), null, false );

	wp_enqueue_script( 'photoswipe', get_template_directory_uri() . '/js/jquery.photoswipe.min.js', array('jquery', 'photoswipe-ui', 'afp_script'), null, false );

	wp_register_script('slick', 'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js', array('jquery'), null, false);
	wp_enqueue_script('slick');

	wp_enqueue_script( 'instafeed', get_template_directory_uri() . '/js/instafeed.min.js', array('jquery'), null, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'greenHaven_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

function theme_name_scripts() {
	wp_enqueue_script( 'main', get_template_directory_uri() . '/js/main.js', array(), '1.0.0', true );
}

add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );