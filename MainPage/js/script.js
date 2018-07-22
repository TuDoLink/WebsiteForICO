/*jquery:true */

$(document).ready(function ($) {
    "use strict";

    // Needed variables
    var winDow = $(window);

    /*-------------------------------------------------*/
    /* =  Top section
     /*-------------------------------------------------*/

    var windowHeight = winDow.height(),
            topSection = $('#home-section');
    topSection.css('height', windowHeight);

    winDow.on('resize', function () {
        var windowHeight = winDow.height();
        topSection.css('height', windowHeight);
    });

    /*-------------------------------------------------*/
    /* =  preloader function
     /*-------------------------------------------------*/
    $('body').ready(function () {
        var mainDiv = $('#container'),
                preloader = $('.preloader');

        preloader.fadeOut(400, function () {
            mainDiv.delay(400).addClass('active');
        });
    });

    /*-------------------------------------------------*/
    /* =  Scroll to TOP
     /*-------------------------------------------------*/

    var animateTopButton = $('a.go-top'),
            htmBody = $('html, body');

    animateTopButton.on('click', function (event) {
        event.preventDefault();
        htmBody.animate({scrollTop: 0}, 'slow');
        return false;
    });

    /*-------------------------------------------------*/
    /* =   Change nav state on scroll
     /*-------------------------------------------------*/

    var sections = $('section')
            , nav = $('nav')
            , nav_height = nav.outerHeight();

    $(window).on('scroll', function () {
        var cur_pos = $(this).scrollTop();

        sections.each(function () {
            var top = $(this).offset().top - nav_height,
                    bottom = top + $(this).outerHeight();

            if (cur_pos >= top && cur_pos <= bottom) {
                nav.find('li.nav-item').removeClass('active');
                sections.removeClass('active');

                $(this).addClass('active');
                if ($(this).attr('id') == 'subscribe-section' || $(this).attr('id') == 'clients-section' || $(this).attr('id') == 'social-section')
                {
                    nav.find('a[href="#home-section"]').parent('li.nav-item').addClass('active');
                } else
                {
                    nav.find('a[href="#' + $(this).attr('id') + '"]').parent('li.nav-item').addClass('active');
                }
            }
        });
    });

    /*-------------------------------------------------*/
    /* =   Smooth scroll
     /*-------------------------------------------------*/

    //Get Sections top position
    function getTargetTop(elem) {

        //gets the id of the section header
        //from the navigation's href e.g. ("#html")
        var id = elem.attr("href");

        //Height of the navigation
        var offset = $('nav').outerHeight() - 1;

        //Gets the distance from the top and 
        //subtracts the height of the nav.
        return $(id).offset().top - offset;
    }

    //Smooth scroll when user click link that starts with #

    var elemHref = $('.navbar-nav a.nav-link[href^="#"], a.scroll-btn[href^="#"]');

    elemHref.on('click', function (event) {

        //gets the distance from the top of the 
        //section refenced in the href.
        var target = getTargetTop($(this));

        //scrolls to that section.
        $('html, body').animate({scrollTop: target}, 600);

        //prevent the browser from jumping down to section.
        event.preventDefault();
    });

    /* ---------------------------------------------------------------------- */
    /*	Header animate after scroll
     /* ---------------------------------------------------------------------- */

    (function () {

        var docElem = document.documentElement,
                didScroll = false,
                changeHeaderOn = 130;
        document.querySelector('header');
        function init() {
            window.addEventListener('scroll', function () {
                if (!didScroll) {
                    didScroll = true;
                    setTimeout(scrollPage, 100);
                }
            }, false);
        }

        function scrollPage() {
            var sy = scrollY();
            if (sy >= changeHeaderOn) {
                $('header').addClass('active');
            } else {
                $('header').removeClass('active');
            }
            didScroll = false;
        }

        function scrollY() {
            return window.pageYOffset || docElem.scrollTop;
        }

        init();

    })();

});

function Resize() {
    $(window).trigger('resize');
}



