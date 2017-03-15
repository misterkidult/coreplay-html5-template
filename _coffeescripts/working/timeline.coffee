introTimeline = null
$skip = false

$ ->
	if $(".app.index").length > 0
		setIntroAni()
	return


setIntroAni = ->
	introTimeline = new TimelineMax
	introTimeline.addLabel "start"
	introTimeline.add new TweenMax.from("body", 0
		delay: 0
	)
	introTimeline.add [
		new TweenMax.from(".bg__left", 1.3
			css:
				width: 0
			ease: Power2.easeOut
		)
		new TweenMax.from(".bg__right", 1.3
			css:
				width: 0
			ease: Power2.easeOut
		)
	], "+=0", "start", .3
	introTimeline.call ->
		$(".bg--ani").removeClass "invert"
		$(".bg--ani").addClass "gaming"
		TweenMax.set(".bg__left, .bg__right",
			clearProps: "all"
		)
		return
	# introTimeline.add new TweenMax.from("body", 0
	# 	delay: 1
	# )
	introTimeline.add [
		new TweenMax.from(".tt--intro1", .7
			css:
				autoAlpha: 0
				y: -50
			ease: Power2.easeOut
		)
		new TweenMax.from(".tt--intro2", .7
			css:
				autoAlpha: 0
				y: 50
			ease: Power2.easeOut
		)
		new TweenMax.from(".cup--1", .7
			css:
				autoAlpha: 0
			ease: Power2.easeOut
		)
		new TweenMax.from(".cup--2", .7
			css:
				autoAlpha: 0
			ease: Power2.easeOut
		)
	], "+=0", "start", .3
	introTimeline.add new TweenMax.from("body", 0
		delay: 1
	)
	introTimeline.call ->
		appSwiper.slideNext()
		return
	introTimeline.add new TweenMax.from("body", 0
		delay: 1
	)
	introTimeline.add [
		new TweenMax.from(".tt--intro3", .7
			css:
				left: 211
				width: 0
			ease: Power2.easeOut
		)
		new TweenMax.from(".tt--intro4", .7
			css:
				width: 0
			ease: Power2.easeOut
		)
	], "+=0", "start", .3
	introTimeline.add new TweenMax.from(".label--gold", .7
		css:
			autoAlpha: 0
		ease: Power2.easeOut
	)
	introTimeline.add new TweenMax.from("body", 0
		delay: 1
	)
	introTimeline.call ->
		appSwiper.slideNext()
		console.log "here"
		return
	introTimeline.call ->
		$(".bg--ani").removeClass "invert"
		$(".bg--ani").addClass "gaming"
		TweenMax.set(".bg__left, .bg__right",
			clearProps: "all"
		)
		return
	introTimeline.addLabel "end"
	introTimeline.pause()
	return
