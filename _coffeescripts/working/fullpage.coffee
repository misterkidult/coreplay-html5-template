## app

$ ->
	$('.app__content.viewport').fullpage
		scrollBar: true
		fitToSection: true
		autoScrolling: true
		onLeave: onLeaveHandler
	return

afterRenderHander = () ->
	console.log "afterRenderHander"
	return

onLeaveHandler = (index, nextIndex, direction) ->
	# console.log nextIndex
	if nextIndex == 4
		$.fn.fullpage.setAutoScrolling(false)
		$.fn.fullpage.setFitToSection(false)
	else
		$.fn.fullpage.setAutoScrolling(true)
		$.fn.fullpage.setFitToSection(true)
	return
