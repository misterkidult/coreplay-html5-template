$ ->
	# $("*[js-toggle=\"modal\"]").on "click", (event) ->
	# 	event.preventDefault()
	# 	str = $(this).attr "js-target"
	# 	nowModal = str
	# 	$('.modal').modal "hide"
	# 	setTimeout( ->
	# 		$(str).modal "show"
	# 	, 333)
	# 	$("body").removeClass "is-open-drawer"
	# 	return

	$('.modal').on 'show.bs.modal', (e) ->
		console.log "modal"
		$("body").removeClass "is-open-drawer"
		return

	$('.modal').on 'hide.bs.modal', (e) ->
		return
	
	return

