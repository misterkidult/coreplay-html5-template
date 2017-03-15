loadingNum = null
_loaded = false

Pace.on "start", ->
	loadingNum = setInterval( ->
		str = $('.pace-progress').attr("data-progress-text")
	, 100)
	return

Pace.on "done", ->
	if _loaded == false
		clearInterval loadingNum
		_loaded = true
		init()
	return

Pace.start()