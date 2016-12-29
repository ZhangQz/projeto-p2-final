$(document).ready(function () {
    $(".cross").hide();
    $(".parar").hide();
    $(".info-content, .prog-content, .tecn-content, .cursos-content, .ruc-content").hide();
    /*$(".inform").mouseover(function () {
        $(".info-content").show();
    });
    $(".inform").mouseleave(function () {
        $(".info-content").hide();
    });*/
    $("#slideshow > div:gt(0)").hide();
    setInterval(function () {
        $('#slideshow > div:first')
            .fadeOut(500)
            .next()
            .fadeIn(500)
            .end()
            .appendTo('#slideshow');
    }, 3000);
    $(".icon_ham").click(function () {
        $("#menu").animate({
            width: 'toggle'
        });
        $(".cross").show();
        $(".icon_ham").hide();
    });
    $(".cross").click(function () {
        $("#menu").animate({
            width: 'toggle'
        });
        $(".cross").hide();
        $(".icon_ham").show();
    });
    $(".inform").click(function () {
        $(".info-content").animate({
            height: 'toggle'
        });
        $(".prog-content, .tecn-content, .cursos-content, .ruc-content").hide();
    });
    $(".programa").click(function () {
        $(".prog-content").animate({
            height: 'toggle'
        });
        $(".info-content, .tecn-content, .cursos-content, .ruc-content").hide();
    });
    $(".servi").click(function () {
        $(".tecn-content").animate({
            height: 'toggle'
        });
        $(".info-content, .prog-content, .cursos-content, .ruc-content").hide();
    });
    $(".curs").click(function () {
        $(".cursos-content").animate({
            height: 'toggle'
        });
        $(".info-content, .prog-content, .tecn-content, .ruc-content").hide();
    });
    $(".ru").click(function () {
        $(".ruc-content").animate({
            height: 'toggle'
        });
        $(".info-content, .prog-content, .tecn-content, .cursos-content").hide();
    });
    $(".ligar").click(function () {
        $(".ligar").hide();
        $(".parar").show();
    });
    $(".parar").click(function () {
        $(".parar").hide();
        $(".ligar").show();
    });
});