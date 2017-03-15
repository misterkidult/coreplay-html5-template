ytPv = null

stopVideoNow = ->
	ytPv.stopVideo()
	return

playVideoNow = ->
	stopVideoNow()
	setTimeout (->
		vid = undefined
		vid = $('.modal.in iframe').attr('id')
		if vid != undefined
			return eval(vid).playVideo()
		return
	), 333
	return

myYoutubeInit = ->
	console.log "onYouTubeIframeAPIReady"
	ytPv = new (YT.Player) 'ytPv'
	return

trigger = null
theModal = null
trigger = $('body').find('[data-toggle="modal"]')
autoPlayYouTubeModal = ->
	trigger.click ->
		theModal = $(this).data('target')
		console.log theModal
		videoSRC = $(this).attr('data-video')
		console.log videoSRC
		videoSRCauto = videoSRC + '?controls=1&rel=0&autoplay=1&enablejsapi=0'
		# console.log videoSRCauto
		$('.modal').on 'show.bs.modal', (e) ->
			$(theModal + ' iframe').attr 'src', videoSRCauto
			return
		# console.log
		$('.modal').on 'hide.bs.modal', (e) ->
			$(theModal + ' iframe').attr 'src', videoSRC + '?controls=1&rel=0&autoplay=0&enablejsapi=0'
			return
		return
	return

autoPlayYouTubeModal()