jQuery(document).ready(function($) {
    $('.tax-filter').click( function(event) {

        $(".tax-filter.active").removeClass("active");
        $(this).addClass("active");
        // Prevent default action - opening tag page
        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false;
        }

        // Get tag slug from title attirbute
        var selecetd_taxonomy = $(this).attr('title');

        // After user click on tag, fade out list of posts
        $('.strain-list-container').fadeOut();

        data = {
            action: 'filter_posts', // function to execute
            afp_nonce: afp_vars.afp_nonce, // wp_nonce
            taxonomy: selecetd_taxonomy, // selected tag
        };

        $.post( afp_vars.afp_ajax_url, data, function(response) {

            if( response ) {
                // Display posts on page
                $('.strain-list-container').html( response );
                // Restore div visibility
                $('.strain-list-container').fadeIn();
            };
        });
    });

    // Main/Product image slider for product page
    $('.main-img-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        arrows: true,
        fade:true,
        speed: 300,
        lazyLoad: 'ondemand',
        asNavFor: '.thumb-nav',
        prevArrow: '<div class="slick-prev"><i class="i-chev-left-thin"></i><span class="sr-text">Previous</span></div>',
        nextArrow: '<div class="slick-next"><i class="i-chev-right-thin"></i><span class="sr-text">Next</span></div>'
    });
// Thumbnail/alternates slider for product page
    $('.thumb-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        infinite: true,
        centerPadding: '0px',
        asNavFor: '.main-img-slider',
        dots: false,
        centerMode: true,
        draggable: false,
        speed:200,
        focusOnSelect: true,
        prevArrow: '<div class="slick-prev"><i class="i-chev-left-thin"></i><span class="sr-text">Previous</span></div>',
        nextArrow: '<div class="slick-next"><i class="i-chev-right-thin"></i><span class="sr-text">Next</span></div>'
    });

//keeps thumbnails active when changing main image, via mouse/touch drag/swipe
    $('.main-img-slider').on('afterChange', function(event, slick, currentSlide, nextSlide){
        //remove all active class
        $('.thumb-nav .slick-slide').removeClass('slick-current');
        //set active class for current slide
        $('.thumb-nav .slick-slide:not(.slick-cloned)').eq(currentSlide).addClass('slick-current');
    });

});

