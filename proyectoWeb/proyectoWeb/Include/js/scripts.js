/*!
    * Start Bootstrap - Agency v6.0.1 (https://startbootstrap.com/template-overviews/agency)
    * Copyright 2013-2020 Start Bootstrap
    * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-agency/blob/master/LICENSE)
    */
function OcultarMensajeError() {
    setTimeout(function () {
        $('#mensajeError').fadeOut('fast');
    }, 5000);
}
    (function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
        if (
            location.pathname.replace(/^\//, "") ==
                this.pathname.replace(/^\//, "") &&
            location.hostname == this.hostname
        ) {
            var target = $(this.hash);
            target = target.length
                ? target
                : $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate(
                    {
                        scrollTop: target.offset().top - 72,
                    },
                    1000,
                    "easeInOutExpo"
                );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#mainNav",
        offset: 74,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
        if ($("#mainNav").offset().top > 100) {
            $("#mainNav").addClass("navbar-shrink");
        } else {
            $("#mainNav").removeClass("navbar-shrink");
        }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);
})(jQuery); // End of use strict

function desplegarClasicos() {
    var e = document.getElementById("dropDownId");
    var index = e.selectedIndex;
    if (index == 0) {
        document.getElementById("first").style.display = 'block'
        document.getElementById("second").style.display = 'none'
        document.getElementById("third").style.display = 'none'
        document.getElementById("fourth").style.display = 'none'
    }
    else if (index == 1) {
        document.getElementById("first").style.display = 'none'
        document.getElementById("second").style.display = 'block'
        document.getElementById("third").style.display = 'none'
        document.getElementById("fourth").style.display = 'none'
    }
    else if (index == 2) {
        document.getElementById("first").style.display = 'none'
        document.getElementById("second").style.display = 'none'
        document.getElementById("third").style.display = 'block'
        document.getElementById("fourth").style.display = 'none'
    }
    else if (index == 3) {
        document.getElementById("first").style.display = 'none'
        document.getElementById("second").style.display = 'none'
        document.getElementById("third").style.display = 'none'
        document.getElementById("fourth").style.display = 'block'
    }
}
function desplegarExoticos() {
    var e = document.getElementById("dropDownId2");
    var index = e.selectedIndex;
    if (index == 0) {
        document.getElementById("first2").style.display = 'block'
        document.getElementById("second2").style.display = 'none'
        document.getElementById("third2").style.display = 'none'
        document.getElementById("fourth2").style.display = 'none'
    }
    else if (index == 1) {
        document.getElementById("first2").style.display = 'none'
        document.getElementById("second2").style.display = 'block'
        document.getElementById("third2").style.display = 'none'
        document.getElementById("fourth2").style.display = 'none'
    }
    else if (index == 2) {
        document.getElementById("first2").style.display = 'none'
        document.getElementById("second2").style.display = 'none'
        document.getElementById("third2").style.display = 'block'
        document.getElementById("fourth2").style.display = 'none'
    }
    else if (index == 3) {
        document.getElementById("first2").style.display = 'none'
        document.getElementById("second2").style.display = 'none'
        document.getElementById("third2").style.display = 'none'
        document.getElementById("fourth2").style.display = 'block'
    }
}

function desplegarConos() {
    var e = document.getElementById("dropDownId3");
    var index = e.selectedIndex;
    if (index == 0) {
        document.getElementById("first3").style.display = 'block'
        document.getElementById("second3").style.display = 'none'
        document.getElementById("third3").style.display = 'none'
        document.getElementById("fourth3").style.display = 'none'
    }
    else if (index == 1) {
        document.getElementById("first3").style.display = 'none'
        document.getElementById("second3").style.display = 'block'
        document.getElementById("third3").style.display = 'none'
        document.getElementById("fourth3").style.display = 'none'
    }
    else if (index == 2) {
        document.getElementById("first3").style.display = 'none'
        document.getElementById("second3").style.display = 'none'
        document.getElementById("third3").style.display = 'block'
        document.getElementById("fourth3").style.display = 'none'
    }
    else if (index == 3) {
        document.getElementById("first3").style.display = 'none'
        document.getElementById("second3").style.display = 'none'
        document.getElementById("third3").style.display = 'none'
        document.getElementById("fourth3").style.display = 'block'
    }
}
function desplegarMalteadas() {
    var e = document.getElementById("dropDownId4");
    var index = e.selectedIndex;
    if (index == 0) {
        document.getElementById("first4").style.display = 'block'
        document.getElementById("second4").style.display = 'none'
    }
    else if (index == 1) {
        document.getElementById("first4").style.display = 'none'
        document.getElementById("second4").style.display = 'block'
    }
    
}
function desplegarCremosos() {
    var e = document.getElementById("dropDownId5");
    var index = e.selectedIndex;
    if (index == 0) {
        document.getElementById("first5").style.display = 'block'
        document.getElementById("second5").style.display = 'none'
    }
    else if (index == 1) {
        document.getElementById("first5").style.display = 'none'
        document.getElementById("second5").style.display = 'block'
    }

}
function desplegarLitros() {
    var e = document.getElementById("dropDownId6");
    var index = e.selectedIndex;
    if (index == 0) {
        document.getElementById("first6").style.display = 'block'
        document.getElementById("second6").style.display = 'none'
        document.getElementById("third6").style.display = 'block'
    }
    else if (index == 1) {
        document.getElementById("first6").style.display = 'none'
        document.getElementById("second6").style.display = 'block'
        document.getElementById("third6").style.display = 'none'
    }
    else if (index == 2) {
        document.getElementById("first6").style.display = 'none'
        document.getElementById("second6").style.display = 'none'
        document.getElementById("third6").style.display = 'block'
    }
}
