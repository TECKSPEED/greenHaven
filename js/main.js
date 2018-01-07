$(document).ready(function () {
    $("div.w-nav-button.menu-button").click(function () {
        if($(this).hasClass('w--open')){
            $(this).removeClass('w--open');
            $("nav.w-nav-menu.nav-menu").removeClass("w--nav-menu-open");
            $("body").removeClass('locked');
        }
        else{
            $(this).addClass("w--open");
            $("nav.w-nav-menu.nav-menu").addClass("w--nav-menu-open");
            $("body").addClass('locked');
        }
    });

    $("ul#primary-menu.menu li, ul#mobile.menu li").each(function (e) {
        if($(this).find("ul.sub-menu a").length > 0) {
            $(this).addClass("has-sub");
        }
    });

    $(window).resize( function (){
        $("nav.w-nav-menu.nav-menu").removeClass("w--nav-menu-open");
        $("div.w-nav-button.menu-button").removeClass("w--open");
        $("li.menu-item.showing").removeClass("showing");
        $("body").removeClass('locked');
        if($(window).width() < 992) {
            $(".mobile-menu").css("display", "block");
            $(".mobile-menu-logo").css("display", "block");
            $(".desktop-menu").css("display", "none");
        }
        else {
            $(".mobile-menu").css("display", "none");
            $(".mobile-menu-logo").css("display", "none");
            $(".desktop-menu").css("display", "block");
        }
    });

    if($(window).width() < 992) {
        $(".mobile-menu").css("display", "block");
        $(".desktop-menu").css("display", "none");
        $(".mobile-menu-logo").css("display", "block");
    }
    else {
        $(".mobile-menu").css("display", "none");
        $(".desktop-menu").css("display", "block");
        $(".mobile-menu-logo").css("display", "none");
    }

    $("li.menu-item").each( function() {
        if($(this).find("> ul").length > 0){
            $(this).find("> a").click(function(e) {
                if($(this).parent().is(".showing")) {
                    $(this).parent().removeClass("showing");
                }
                else {
                    $("li.menu-item.showing").removeClass("showing");
                    $(this).parent().addClass("showing");
                }
                e.preventDefault();
                e.stopPropagation();

            });
        }
    });
    $("body").click(function(e) {
        if(!$(e.target).is("li.menu-item") && !$(e.target).is("li.menu-item *")) {
            $("li.menu-item.showing").removeClass("showing");
        }
    });

	jQuery('.retailer-half').matchHeight();


});

