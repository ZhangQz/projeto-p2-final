$(document).ready(function () {
	$('#menu').click(function () {
		$(this).toggleClass('open');
        $(this).css("display", "block");
	});
});