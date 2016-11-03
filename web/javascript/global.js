
// to be split into files by page by require.js or template
$(document).ready(function() {

	// general language switch
	$('.languageSwitch').click(function(event) {
		event.preventDefault()
		var id = $(this).attr('id');
		$.get('/ajax/language?lang='+id, function(ret) {
			var url = window.location.href.toString().split(window.location.host)[1].split("?")[0];
			window.location = url;
		});
		return false;
	});

	// admin
	$('.tpage').click(function () {
		$(".tvalue").hide();
		$(this).addClass("active").siblings().removeClass("active");
		$('#'+$(this).attr('id')+'values').show();
	});



});
