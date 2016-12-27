$(document).ready(function () {
    $(".icon_ham").click(function () {
        $("#menu").animate({
            height: 'toggle'
        });
    });
    $(".cross").click(function () {
        $("#menu").slideToggle("slow", function () {
            $(".cross").hide();
            $(".icon_ham").show();
        });
    });
});