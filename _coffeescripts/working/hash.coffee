# hash

checkHash = ->
	hash = window.location.hash
	console.log hash
	switch hash
		when "#news"
			scrollPageTo "#eventsNews"
	return