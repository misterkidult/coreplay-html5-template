## swiper

viewSwiper = null
demoSwiper = null

$ ->
	if $("#demoSwiper").length > 0
		demoSwiper = new Swiper "#demoSwiper",
			speed: 333
			loop: true
			autoplay: 1333
			# autoHeight: true
		demoSwiper.on "slideChangeStart", (e) ->
			console.log e
			return
	return


$ ->
	$(document).delegate "*[js-toggle=\"slide-to\"]", "click", (event) ->
		str = $(this).attr("js-target")
		$("body").removeClass "is-open-drawer"
		appSlideTo str
		return
	$(document).delegate "*[js-toggle=\"slide-to-next\"]", "click", (event) ->
		appSwiper.slideNext()
		return

	$(document).delegate "*[js-toggle=\"slide-to-prev\"]", "click", (event) ->
		appSwiper.slidePrev()
		return
	return