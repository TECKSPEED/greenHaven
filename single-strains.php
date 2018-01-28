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
                    <!-- Product Images & Alternates -->
                    <div class="product-images">
                        <!-- Begin Product Images Slider -->
                        <div class="main-img-slider">
                            <figure>
                                <img src=" <?php echo the_post_thumbnail_url('full') ?>" data-lazy="<?php echo the_post_thumbnail_url('full') ?>"  alt="" />
                            </figure>
	                        <?php $galleryArray = get_post_gallery_ids($post->ID); ?>
	                        <?php foreach ($galleryArray as $id) { ?>
                                <figure>
                                    <img src="<?php echo wp_get_attachment_url( $id ); ?>" data-lazy="<?php echo wp_get_attachment_url( $id ); ?>"  alt="" />
                                </figure>
	                        <?php } ?>
                        </div>
                        <!-- End Product Images Slider -->
                        <!-- Begin product thumb nav -->
                        <ul class="thumb-nav">
                            <li> <img src=" <?php echo the_post_thumbnail_url('full') ?>"/></li>
	                        <?php foreach ($galleryArray as $id) { ?>
                                <li><img src="<?php echo wp_get_attachment_url( $id ); ?>"/></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
                <div class="w-col w-col-6">
                    <h2 class="title-h2"><?php echo the_title(); ?></h2>
                    <div class="w-row strain-attributes">
                        <div class="w-col w-col-6 aroma">
                            <i class="fa fa-2x fa-cloud"></i>
                            <p><?php echo rwmb_meta('aroma'); ?></p>
                        </div>
                        <div class="w-col w-col-6 lineage">
                            <i class="fa fa-2x fa-pie-chart"></i>
                            <p><?php echo rwmb_meta('lineage'); ?></p>
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
                    <?php
                    $strainEffects = rwmb_meta( 'straineffect' );
                    if(!(sizeOf($strainEffects) == 0)) { ?>
                        <h2 class="title-h2">Strain Effects</h2>
                        <ul class="strain-bargraph">
                            <?php
                            $strainEffectsPercentage = rwmb_meta( 'straineffectpercentage' );

                            for ($i = 0; $i< count($strainEffects); $i++) { ?>
                                <li style="width:<?php echo $strainEffectsPercentage[$i] ?>%"><?php echo $strainEffects[$i] ?></li>
                            <?php } ?>
                    </ul>
                    <?php } ?>
                </div>
            </div>
	    <?php endwhile; ?>
    </div>

<?php get_footer(); ?>
