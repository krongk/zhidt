
/* __________________ INITIALIZATIONS  __________________*/

ready = function() { 
    /* ----------  equal height columns only on footer-content-1   -------- */
    //$('.footer [class*="footer-content-"]').matchHeight();


    /* ----  tooltips and popover (bootstrap.min.js)  -------- */
    if ($('html').hasClass('no-touch')) { // hover doesn't work on touch, so don't use

    /* ----  hover tooltip -------- */
    //    $('.tooltip-hover').tooltip({trigger: 'hover',container: 'body'});

    /* ----  hover popover -------- */
    //    $('.popover-hover').popover({ trigger: 'hover'});
    } // end if html has class no-touch


    /* ----  click tooltip -------- */
    $('.tooltip-click').tooltip({trigger: 'click',container: 'body'});

    /* ----  click popover -------- */
    $('.popover-click').popover({trigger: 'click'});


    /* ----------  fitText   -------- */
    $(".banner .line-1").fitText(.6);
    $(".banner .line-2").fitText(1.2);
    $(".banner .line-3").fitText(1.7);


    /* ----------  .title inner wrapper -------- */
    $('.title').wrapInner("<span></span>");


    /* ----------  .primary-nav   -------- */
    $('.primary-nav').dcAccordion({
        saveState: true,
        autoClose: true,
        disableLink: true,
        speed: "fast",
        showCount: false,
        autoExpand: false
    });


    /* ----------   toggle-menu   -------- */
    $('.toggle-menu').click(function () {
        $('html').toggleClass('menu-open');
        $('html').removeClass('search-open');

    });

    /* ----------  toggle-search   -------- */
    $('.toggle-search').click(function () {
        $('html').toggleClass('search-open');
        $('html').removeClass('menu-open');
    });

}; // end document ready
/*======================================下面是burbolinks改造后的调用方法===============================================*/
//#turbolinks style
$(document).ready(ready);
$(document).on('page:load', ready);

/* __________________ CLOSE SEARCH WHEN CLICKED OUTSIDE __________________*/

    $(document).click(function (a) {
        if ($(a.target).parents().index($(".search-wrapper")) == -1) {
            $('html').removeClass('search-open');
        }
    });

    $(document).on("touchstart", function (a) {
        if ($(a.target).parents().index($(".search-wrapper")) == -1) {
            $('html').removeClass('search-open');
        }
    });


/* __________________ SCROLL TO TOP __________________*/

if ($("html").hasClass("ie8")) { // avoid IE8 bug

    $('#go-to-top').hide();
}

if ($("html").hasClass("boxshadow")) { // avoid IE8 bug

    $(document).ready(function () {

        $('#go-to-top').hide();

        //Check to see if the window is top if not then display button
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('#go-to-top').fadeIn();
            } else {
                $('#go-to-top').fadeOut();
            }
        });

        //Click event to scroll to top
        $('#go-to-top').click(function () {
            $('html, body').animate({
                scrollTop: 0
            }, 800);
            return false;
        });

    });

} // end if html has class boxshadow


/* __________________ PLACEHOLDER __________________*/
$(document).ready(function(){if(!Modernizr.input.placeholder){$("input").each(function(){var a=$(this);if(a.val()==""&&a.attr("placeholder")!=""){a.val(a.attr("placeholder"));a.focus(function(){if(a.val()==a.attr("placeholder")){a.val("")}});a.blur(function(){if(a.val()==""){a.val(a.attr("placeholder"))}});$(a).closest("form").submit(function(){var b=$(this);if(!b.hasClass("placeholderPending")){$("input",this).each(function(){var c=$(this);if(c.val()==c.attr("placeholder")){c.val("")}});b.addClass("placeholderPending")}})}})}});





