# match height

$ ->
	$(".match-height").each ->
		$(this).matchHeight()
		return
	return

$.fn.matchHeight = ->
	min = 0
	group = $(this)
	$(group).find(".match-height-item").each ->
		if $(this).height() > min
			min = $(this).height()
		return
	$(group).find(".match-height-item").each ->
		$(this).css "height", min
		return
	return