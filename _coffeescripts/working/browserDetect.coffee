BrowserDetect.init()

$ ->
	userAgent = window.navigator.userAgent.toLowerCase()
	ios = /iphone|ipod|ipad/.test(userAgent)
	if ios
		$('html').addClass 'is-ios'
	if BrowserDetect.browser == "Explorer" || BrowserDetect.browser == "Other"
		$("html").addClass "is-ie"
	return