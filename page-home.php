<?php
/*
	Template Name: Home
*/
get_header(); ?>
<script>
    jQuery.ageCheck();
</script>
<?php echo get_hero(); ?>
<?php echo our_strains(); ?>
<?php echo weekly_retailer(); ?>
<?php echo contactUs(); ?>
<?php echo instafeed(); ?>
<?php get_footer(); ?>