<?php
/**
 * vencanje functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package vencanje
 */
//add_filter('acf/settings/show_admin', '__return_false');

if ( ! function_exists( 'vencanje_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function vencanje_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on vencanje, use a find and replace
		 * to change 'vencanje' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'vencanje', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

        add_image_size("slider-velicina", 1156, 407, true);
        add_image_size("thumbnail-mini", 32, 32, true);
        add_image_size("about-us-image", 126, 126, true);

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
		register_nav_menus( [
		    'header-menu' => 'Main Top Location',
		    'footer-menu' => 'Footer Location'
        ] );

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

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'vencanje_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'vencanje_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function vencanje_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'vencanje_content_width', 640 );
}
add_action( 'after_setup_theme', 'vencanje_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function vencanje_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'vencanje' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'vencanje' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

    register_sidebar( array(
        'name'          => esc_html__( 'Home Page', 'vencanje' ),
        'id'            => 'home-page',
        'description'   => esc_html__( 'Add widgets here.', 'vencanje' ),
        'before_widget' => '<div class="one_third columns">',
        'after_widget'  => '</div>',
//        'before_title'  => '<h2 class="widget-title">',
//        'after_title'   => '</h2>',
    ) );
}
add_action( 'widgets_init', 'vencanje_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function vencanje_scripts() {
    wp_enqueue_style('style', get_template_directory_uri().'/styles/style.css');
    wp_enqueue_style('inner', get_template_directory_uri() . "/styles/inner.css");
    wp_enqueue_style('layout', get_template_directory_uri() . "/styles/layout.css");
    wp_enqueue_style('flexslider', get_template_directory_uri() . "/styles/flexslider.css");
    wp_enqueue_style('color', get_template_directory_uri() . "/styles/color.css");
    wp_enqueue_style('prettyPhoto', get_template_directory_uri() . "/styles/prettyPhoto.css");
    wp_enqueue_script('jquery', get_template_directory_uri().'/js/jquery-1.7.1.min.js', '', 1.71, true);
    wp_enqueue_script('hoverIntent', get_template_directory_uri().'/js/hoverIntent.js', 'jquery', 1.0, true);
    wp_enqueue_script('superfish', get_template_directory_uri().'/js/superfish.js', 'jquery', 1.0, true);
    wp_enqueue_script('supersubs', get_template_directory_uri().'/js/supersubs.js', 'jquery', 1.71, true);
    wp_enqueue_script('tinynav', get_template_directory_uri().'/js/tinynav.min.js', 'jquery', 1.71, true);
    wp_enqueue_script('custom', get_template_directory_uri().'/js/custom.js', 'jquery', 1.71, true);
    wp_enqueue_script('flexslider', get_template_directory_uri().'/js/jquery.flexslider-min.js', 'jquery', 1.71, true);
    wp_enqueue_script('tooltipster', 'https://cdnjs.cloudflare.com/ajax/libs/tooltipster/3.3.0/js/jquery.tooltipster.min.js', 'jquery', 1.71, true);
}
add_action( 'wp_enqueue_scripts', 'vencanje_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';
require get_template_directory() . '/inc/HomeWidget.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}


require get_template_directory() . '/inc/post-types.php';

function get_first_x_words($text, $words = 7) {
    $text = wp_strip_all_tags($text);
    $text = trim(preg_replace('/\s+/', ' ', $text)); // Remove new lines
    $textAR = explode(' ', $text);
    $text = array_slice($textAR, 0, $words);
    return implode(" ", $text) . "...";
}

if( function_exists('acf_add_options_page') ) {
    acf_add_options_page('Theme Settings');
}

function debug($input, $die = false) {
    echo '<pre>';
    print_r($input);
    echo '</pre>';
    if ($die) {
        die();
    }
}

function nesto_function( $atts ){
    return '<div class="separator"></div>';
}
add_shortcode( 'nesto', 'nesto_function' );

function boja_shortcode( $atts, $content ){
    if($atts['font'] == "big") {
        $font = "font-size: 30px";
    } else {
        $font = "";
    }
    return "<span style='color:{$atts['color']};{$font}'>{$content}</span>";
}
add_shortcode( 'boja', 'boja_shortcode' );

function prevedi_shortcode($atts, $content){

    return "<span class='tooltip' title='{$atts['prevod']}'>{$content}</span>";
}
add_shortcode( 'prevedi', 'prevedi_shortcode' );

add_action( 'widgets_init', function(){
    register_widget( 'HomeWidget' );
});