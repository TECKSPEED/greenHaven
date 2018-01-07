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
                            <p><?php echo get_field('aroma'); ?></p>
                        </div>
                        <div class="w-col w-col-6 lineage">
                            <i class="fa fa-2x fa-pie-chart"></i>
                            <p><?php echo get_field('lineage'); ?></p>
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
                    <h2 class="title-h2">Strain Effects</h2>
                    <div class="skills">
                        <ul class="lines">
                            <li class="line l--0">
      <span class="line__label title">
        Skill level:
      </span>
                            </li>
                            <li class="line l--25">
      <span class="line__label">
        The basics
      </span>
                            </li>
                            <li class="line l--50">
      <span class="line__label">
        Advanced
      </span>
                            </li>
                            <li class="line l--75">
      <span class="line__label">
        Seasoned
      </span>
                            </li>
                            <li class="line l--100">
      <span class="line__label">
        Expert
      </span>
                            </li>
                        </ul>

                        <div class="charts">
                            <div class="chart chart--dev">
                                <span class="chart__title">Development</span>
                                <ul class="chart--horiz">
                                    <li class="chart__bar" style="width: 98%;">
          <span class="chart__label">
            HTML5
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 98%;">
          <span class="chart__label">
            CSS3 & SCSS
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 70%;">
          <span class="chart__label">
            JavaScript
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 40%;">
          <span class="chart__label">
            AngularJS
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 40%;">
          <span class="chart__label">
            ReactJS
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 60%;">
          <span class="chart__label">
            jQuery
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 55%;">
          <span class="chart__label">
            NodeJS
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 50%;">
          <span class="chart__label">
            Grunt / Gulp / Webpack
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 40%;">
          <span class="chart__label">
            .NET
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 60%;">
          <span class="chart__label">
            Umbraco
          </span>
                                    </li>
                                    <li class="chart__bar" style="width: 60%;">
          <span class="chart__label">
            Sitecore
          </span>
                                    </li>
                                </ul>
                            </div>

                            <div class="chart chart--prod">
                                <span class="chart__title">Productivity</span>
                                <ul class="chart--horiz">
                                    <li class="chart__bar" style="width: 75%;">
        <span class="chart__label">
          Git + Github, Bitbucket & Sourcetree
        </span>
                                    </li>
                                    <li class="chart__bar" style="width: 80%;">
        <span class="chart__label">
          Microsoft Office
        </span>
                                    </li>
                                </ul>
                            </div>

                            <div class="chart chart--design">
                                <span class="chart__title">Design</span>
                                <ul class="chart--horiz">
                                    <li class="chart__bar" style="width: 45%;">
        <span class="chart__label">
          Photoshop
        </span>
                                    </li>
                                    <li class="chart__bar" style="width: 35%;">
        <span class="chart__label">
          Illustrator
        </span>
                                    </li>
                                    <li class="chart__bar" style="width: 60%;">
        <span class="chart__label">
          User Experience
        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	    <?php endwhile; ?>
    </div>

<?php get_footer(); ?>
