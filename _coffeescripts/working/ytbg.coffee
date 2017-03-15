
if md.mobile() != null
	$('#background-video').addClass "video-is-mobile"
	youtubeInit = ->

	console.log 'youtubeInit'
	tag = document.createElement('script')
	tag.src = 'https://www.youtube.com/iframe_api'
	firstScriptTag = document.getElementsByTagName('script')[0]
	firstScriptTag.parentNode.insertBefore tag, firstScriptTag
	ytloaded = 0

	onYouTubeIframeAPIReady = ->
	  console.log 'onYouTubeIframeAPIReady'
	  ytPv = new (YT.Player)('ytPv', events:
	    'onReady': onPlayerReady
	    'onStateChange': onPlayerStateChange)
	  return

	onPlayerReady = ->

	onPlayerStateChange = (e) ->
else
	$('#background-video').YTPlayer
		videoId: 'GJ5m0ZnPnrc'