# FB

$ ->
	$(document).delegate "*[js-toggle=\"fb.share\"]", "click", (e) ->
		ogimg = $(this).attr "og-img"
		ogurl = $(this).attr "og-url"
		ogname = $(this).attr "og-name"
		ogdes = $(this).attr "og-des"
		FB.ui {
			method: 'feed'
			picture: ogimg
			link: ogurl
			caption: ''
			name: ogname+''
			description: ogdes
		}, (response) ->
			console.log response
			return
		return
	return