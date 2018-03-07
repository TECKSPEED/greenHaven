jQuery(document).ready(function () {
    jQuery("div.w-nav-button.menu-button").click(function () {
        if(jQuery(this).hasClass('w--open')){
            jQuery(this).removeClass('w--open');
            jQuery("nav.w-nav-menu.nav-menu").removeClass("w--nav-menu-open");
            jQuery("body").removeClass('locked');
        }
        else{
            jQuery(this).addClass("w--open");
            jQuery("nav.w-nav-menu.nav-menu").addClass("w--nav-menu-open");
            jQuery("body").addClass('locked');
        }
    });

    jQuery("ul#primary-menu.menu li, ul#mobile.menu li").each(function (e) {
        if(jQuery(this).find("ul.sub-menu a").length > 0) {
            jQuery(this).addClass("has-sub");
        }
    });

    jQuery(window).resize( function (){
        jQuery("nav.w-nav-menu.nav-menu").removeClass("w--nav-menu-open");
        jQuery("div.w-nav-button.menu-button").removeClass("w--open");
        jQuery("li.menu-item.showing").removeClass("showing");
        jQuery("body").removeClass('locked');
        if(jQuery(window).width() < 992) {
            jQuery(".mobile-menu").css("display", "block");
            jQuery(".mobile-menu-logo").css("display", "block");
            jQuery(".desktop-menu").css("display", "none");
        }
        else {
            jQuery(".mobile-menu").css("display", "none");
            jQuery(".mobile-menu-logo").css("display", "none");
            jQuery(".desktop-menu").css("display", "block");
        }
    });

    if(jQuery(window).width() < 992) {
        jQuery(".mobile-menu").css("display", "block");
        jQuery(".desktop-menu").css("display", "none");
        jQuery(".mobile-menu-logo").css("display", "block");
    }
    else {
        jQuery(".mobile-menu").css("display", "none");
        jQuery(".desktop-menu").css("display", "block");
        jQuery(".mobile-menu-logo").css("display", "none");
    }

    jQuery("li.menu-item").each( function() {
        if(jQuery(this).find("> ul").length > 0){
            jQuery(this).find("> a").click(function(e) {
                if(jQuery(this).parent().is(".showing")) {
                    jQuery(this).parent().removeClass("showing");
                }
                else {
                    jQuery("li.menu-item.showing").removeClass("showing");
                    jQuery(this).parent().addClass("showing");
                }
                e.preventDefault();
                e.stopPropagation();

            });
        }
    });
    jQuery("body").click(function(e) {
        if(!jQuery(e.target).is("li.menu-item") && !jQuery(e.target).is("li.menu-item *")) {
            jQuery("li.menu-item.showing").removeClass("showing");
        }
    });

	jQuery('.retailer-half').matchHeight();

});

