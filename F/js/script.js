$(document).ready(function () {
    $(".cross").hide();
    $(".parar").hide();
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