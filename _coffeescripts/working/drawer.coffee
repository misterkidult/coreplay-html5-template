# drawer

$ ->
	$(document).delegate "*[js-toggle=\"drawer\"]", "click", (e) ->
		$(this).toggleClass "is-active"
		$("body").toggleClass "is-open-drawer"
		menu = $(this)
		$('.drawer--mask').click ->
			$("body").removeClass "is-open-drawer"
			menu.removeClass 'is-active'
			return
		return
	return
