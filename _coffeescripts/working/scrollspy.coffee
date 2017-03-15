# # scrollspy

$ ->
	$(window).on 'activate.bs.scrollspy', ->
		console.log $(".scrollspy .active").attr("href")
		# $('.nav-primacy .nav-item').each ->
		# 	$('.nav-primacy .nav-item').removeClass 'scrolled'
		# 	return
		# $(".nav-primacy .active").parent().addClass "scrolled"
		# checkScrollAnimation()
		return
	return
