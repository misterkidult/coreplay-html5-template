# Browser Detect

BrowserDetect =
	init: ->
		@browser = @searchString(@dataBrowser) or "Other"
		@version = @searchVersion(navigator.userAgent) or @searchVersion(navigator.appVersion) or "Unknown"
		return

	searchString: (data) ->
		i = 0
		while i < data.length
			dataString = data[i].string
			@versionSearchString = data[i].subString
			return data[i].identity  unless dataString.indexOf(data[i].subString) is -1
			i++
		return

	searchVersion: (dataString) ->
		index = dataString.indexOf(@versionSearchString)
		return  if index is -1
		parseFloat dataString.substring(index + @versionSearchString.length + 1)

	dataBrowser: [
		{
			string: navigator.userAgent
			subString: "Chrome"
			identity: "Chrome"
		}
		{
			string: navigator.userAgent
			subString: "MSIE"
			identity: "Explorer"
		}
		{
			string: navigator.userAgent
			subString: "Firefox"
			identity: "Firefox"
		}
		{
			string: navigator.userAgent
			subString: "Safari"
			identity: "Safari"
		}
		{
			string: navigator.userAgent
			subString: "Opera"
			identity: "Opera"
		}
	]