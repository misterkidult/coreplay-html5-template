## app

$ ->
	# $('.app__content.viewport').fullpage
	# 	scrollBar: true
	# 	fitToSection: true
	# 	autoScrolling: true
	# 	scrollOverflow: true
	# 	scrollingSpeed: 700
	# 	onLeave: onLeaveHandler
	# 	afterLoad: afterLoadHandler
	return

afterLoadHandler = () ->
	# console.log "afterLoadHandler"
	ga 'send', 'pageview', location.hash
	return

onLeaveHandler = (index, nextIndex, direction) ->
	console.log "onLeaveHandler"
	return
