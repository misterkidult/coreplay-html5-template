
## scroll
tight = false
scrolled = false
$ ->
	$(window).scroll ->
		$(window).trigger "resize"
		scrollEvent()
		return
	return
	
scrollEvent = ->
	st = $(window).scrollTop()
	sv = $(window).height()	
	# console.log st
	if st >= 60
		$("body").addClass "is-scrolled"
	else
		$("body").removeClass "is-scrolled"
	return

$ ->
	$(document).delegate "*[js-toggle=\"scroll\"]", "click", (event) ->
		event.preventDefault()
		str = $(this).attr "js-target"
		if str == undefined
			str = $(this).attr "href"
		scrollPageTo str
		return
	
	return

scrollPageTo = (str) ->
	oy = $(str).offset().top - 30
	st = $(window).scrollTop() - 20
	if md.mobile() == null
		scrollPageHandle oy
	else
		scrollPageHandle oy
	return

scrollPageHandle = (n) ->
	$('html,body').stop(true,false).animate
		scrollTop: n
		easing: "ease"
	,
		duration: 777
	return


getScrollBarWidth = ->
	$outer = $('<div>').css(
		visibility: 'hidden'
		width: 100
		overflow: 'scroll').appendTo('body')
	widthWithScroll = $('<div>').css(width: '100%').appendTo($outer).outerWidth()
	$outer.remove()
	return 100 - widthWithScroll


