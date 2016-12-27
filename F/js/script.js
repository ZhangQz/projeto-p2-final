$(document).ready(function () {
    $(".cross").hide();
    $(".parar").hide();
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
            height: 'toggle'
        });
        $(".cross").show();
        $(".icon_ham").hide();
    });
    $(".cross").click(function () {
        $("#menu").animate({
            height: 'toggle'
        });
        $(".cross").hide();
        $(".icon_ham").show();
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