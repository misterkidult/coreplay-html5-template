## resize


$ ->
	$(window).resize ->
		browserWidthResize = $(window).width()
		return
	$(window).trigger "resize"
	return
