## swiper

viewSwiper = null
appSwiper = null

$ ->
	if $("#appSwiper").length > 0
		appSwiper = new Swiper "#appSwiper",
			speed: 1777
			direction: "vertical"
			mousewheelControl: true
			# autoHeight: true
		appSwiper.on "slideChangeStart", (e) ->
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