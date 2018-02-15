<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package greenHaven
 */

// $footer_copy	= get_field('footer_copy');
// $footer_signoff	= get_field('footer_signoff');


?>

<div class="w-section footer">
<div class="w-container footer-container">
  <div class="w-row footer-columns">
        <div class="w-col w-col-3">
            <p class="footer-title">Legal Information</p>
            <div class="line"></div>
          <?php wp_nav_menu( array( 'theme_location' => 'footer-column-1', 'menu_id' => 'header-nav-link' ) ); ?>
        </div>
        <div class="w-col w-col-3">
            <p class="footer-title">Our Products</p>
            <div class="line"></div>
          <?php wp_nav_menu( array( 'theme_location' => 'footer-column-2', 'menu_id' => 'header-nav-link' ) ); ?>
        </div>
        <div class="w-col w-col-3">
            <p class="footer-title">Customer Service</p>
            <div class="line"></div>
          <?php wp_nav_menu( array( 'theme_location' => 'footer-column-3', 'menu_id' => 'header-nav-link' ) ); ?>
        </div>
        <div class="w-col w-col-3">
            <ul class="footer-social">
                <li><a class="fa fa-facebook-f" href=""></a></li>
                <li><a class="fa fa-instagram" href=""></a></li>
                <li><a class="fa fa-twitter" href=""></a></li>
            </ul>
            <br/>
            <div class="footer-address"><p class="address-title">Green Haven LLC</p><p class="address">123 Lucy Lane<br/> Darrington, WA 98241</p></div>
        </div>
  </div>
</div>
    <div class="w-container footer-copyright-container">
        <div class="w-row">
            <div class="w-col w-col-12">
                <p class="footer-copyright">Green Haven LLC ©<?php echo date("Y") ?></p>
                <p class="footer-copyright">For use only by adults twenty-one and older. Keep out of reach of children. Marijuana can impair concentration, coordination, and judgement. Do not operate a vehicle or machinary under the influence of this drug. This product has intoxicating effects and may be habit forming.</p>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<?php bloginfo ('stylesheet_directory'); ?>/js/slick.min.js"></script>
<!-- <script type="text/javascript" src="js/webflow.js"></script> -->
<!--[if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
    <?php wp_footer(); ?>
</body>
</html>