####jQuery.fx.interval = 16.666
md = new MobileDetect(window.navigator.userAgent)

nowModal = ""
bannerSwiper = ""

_loaded = false
_scrolled = false
_auth = false
msrc = ""

n = 0

$.fn.extend animateCss: (animationName) ->
	animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'
	$(this).addClass('animated ' + animationName).one animationEnd, ->
		$(this).removeClass 'animated ' + animationName
		return
	return

$ ->
	root=exports?this
	$(".invisible").fadeOut(0)
	$(".invisible").removeClass "invisible"
	$(window).trigger "scroll"
	$(window).trigger "resize"
	if $('.buttons').length > 0
		$('.buttons').on 'click', ->
			$('.block--wrapper').css 'justify-content' : 'space-between'
			return
	if $('.buttons2').length > 0
		$('.buttons2').on 'click', ->
			$('.block--wrapper').css 'justify-content' : 'center'
			return

	# $("body").on "click", (e) ->
	# 	switch true
	# 		when $("body").hasClass("cut1")
	# 			$("body").removeClass "cut1"
	# 			$("body").addClass "cut2"
	# 		when $("body").hasClass("cut2")
	# 			$("body").removeClass "cut2"
	# 			$("body").addClass "cut3"
	# 		when $("body").hasClass("cut3")
	# 			$("body").removeClass "cut3"
	# 			$("body").addClass "cut1"
	# 	return

	$(document).mousemove (e) ->
		box = $(".meteor3D")
		# $mouseAry++
		boxCenter = [
			box.offset().left + box.width() / 2
			box.height() / 2
		]
		angle = Math.atan2(e.pageY - boxCenter[0], (boxCenter[1]) )*(90/Math.PI)
		angle = angle * 3
		# box.css 'transform' : 'rotateX( ' + angle + 'deg)' 
		# console.log angle
		return
	return


init = ->
	# checkHash()
	setTimeout( ->
		$(".app__loading").fadeOut 777, ->
			$(".from").removeClass "from"
	, 777)
	$mq = window.matchMedia "(max-width: 62em)"
	# console.log $mq.matches
	
	return

$ ->
	$(document).delegate "*[js-alert]", "click", (e) ->
		str = $(this).attr "js-alert"
		alert str
		return
	$(document).delegate "*[js-trigger]", "click", (event) ->
		fn = $(this).attr "js-trigger"
		eval(fn)()
		# alert fn
		return
	return

$ ->
	if md.mobile() == null
		$('.flipBox').hover (->
			$(this).addClass 'is-flipped'
			), ->
			$(this).removeClass 'is-flipped'
			return
	else
		$('.flipBox').hover (->
			$(this).addClass 'is-flipped'
			), ->
			$(this).removeClass 'is-flipped'
			return
		$('.flipBox .back--content').on 'click', ->
			$('.flipBox').each ->
				$('.flipBox.is-flipped').removeClass 'is-flipped'
				return
			return
	$("ul.nav.nav-primacy li a").on 'click', (e) ->
		$("*[js-toggle=\"drawer\"]").removeClass "is-active"
		$("body").removeClass "is-open-drawer"
		return
	return

$(document).on 'ready', ->
	$('button').on 'click', ->
		link = document.createElement('a')
		link.href = $(this).attr 'href'
		link.style = 'visibility:hidden'
		link.target = '_blank'
		document.body.appendChild link
		link.click()
		document.body.removeChild link
		return
	return


$ ->
	if md.mobile() == null
		$('body').mousemove (e) ->
			x = -(e.pageX + @offsetLeft) / 100
			y = -(e.pageY + @offsetTop) / 100
			if $('.squid').length > 0
				$('.squid').css 'right': x
				$('.squid').css 'top' : y
			return
	return