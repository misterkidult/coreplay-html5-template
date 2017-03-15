## alert

$ ->
	
	$("*[js-toggle=\"alert\"]").on "click", (event) ->
		event.preventDefault()
		str = $(this).attr "js-alert"
		alert str
		return
	return