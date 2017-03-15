$category = ""

$ ->
	if md.mobile() != null
		$category = "mobile"
	else
		$category = "pc"

	$(".ga-click").click (e) ->
		$category = $(this).attr "ga-category"
		$label = $(this).attr "ga-label"
		ga 'send',
			hitType: 'event'
			eventCategory: $category
			eventAction: 'click'
			eventLabel: $label
		return
	return

