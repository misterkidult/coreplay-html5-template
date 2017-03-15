map = null

stylesArray = [
		{
			'featureType': 'water'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#e9e9e9' }
				{ 'lightness': 17 }
			]
		}
		{
			'featureType': 'landscape'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#f5f5f5' }
				{ 'lightness': 20 }
			]
		}
		{
			'featureType': 'road.highway'
			'elementType': 'geometry.fill'
			'stylers': [
				{ 'color': '#ffffff' }
				{ 'lightness': 17 }
			]
		}
		{
			'featureType': 'road.highway'
			'elementType': 'geometry.stroke'
			'stylers': [
				{ 'color': '#ffffff' }
				{ 'lightness': 29 }
				{ 'weight': 0.2 }
			]
		}
		{
			'featureType': 'road.arterial'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#ffffff' }
				{ 'lightness': 18 }
			]
		}
		{
			'featureType': 'road.local'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#ffffff' }
				{ 'lightness': 16 }
			]
		}
		{
			'featureType': 'poi'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#f5f5f5' }
				{ 'lightness': 21 }
			]
		}
		{
			'featureType': 'poi.park'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#dedede' }
				{ 'lightness': 21 }
			]
		}
		{
			'elementType': 'labels.text.stroke'
			'stylers': [
				{ 'visibility': 'on' }
				{ 'color': '#ffffff' }
				{ 'lightness': 16 }
			]
		}
		{
			'elementType': 'labels.text.fill'
			'stylers': [
				{ 'saturation': 36 }
				{ 'color': '#333333' }
				{ 'lightness': 40 }
			]
		}
		{
			'elementType': 'labels.icon'
			'stylers': [ { 'visibility': 'on' } ]
		}
		{
			'featureType': 'transit'
			'elementType': 'geometry'
			'stylers': [
				{ 'color': '#f2f2f2' }
				{ 'lightness': 19 }
			]
		}
		{
			'featureType': 'administrative'
			'elementType': 'geometry.fill'
			'stylers': [
				{ 'color': '#fefefe' }
				{ 'lightness': 20 }
			]
		}
		{
			'featureType': 'administrative'
			'elementType': 'geometry.stroke'
			'stylers': [
				{ 'color': '#fefefe' }
				{ 'lightness': 17 }
				{ 'weight': 1.2 }
			]
		}
	]

$pin1 = new (google.maps.LatLng)(25.04504, 121.51463)

initMap = ->
	mapOptions =
		zoom: 10
		center: $pin1
		streetViewControl: false
		scaleControl: true
		scrollwheel: true
		disableDefaultUI: true
		draggable: true
		zoomControlOptions:
			position: google.maps.ControlPosition.TOP_CENTER
			style: google.maps.ZoomControlStyle.LARGE
		draggableCursor: 'crosshair'
	
	map = new (google.maps.Map)(document.getElementById('map_canvas'), mapOptions)

	map.setOptions
		styles: stylesArray

	kmlOptions = 
		suppressInfoWindows: false
		preserveViewport: true
		suppressMarkers: true
		map: map

	# kmlUrl = 'http://tkk-2017.coreplay.com.tw/kml/tkk1702131640.kml'
	# kmlUrl = 'https://www.google.com/maps/d/u/0/kml?mid=1ZdcVXfyEXOSOVjzRTXAiTjUMl3s&nl=1'
	kmlUrl = 'https://www.google.com/maps/d/kml?hl=zh-TW&authuser=0&mid=1jZlfKj-45dRAkxqjvVyTv43Cyi0&lid=fXKDUqhklDM&cid=mp&cv=0KEyidfD2_M.zh_TW.'
	# kmlUrl = 'https://www.google.com/maps/d/kml?mid=1jZlfKj-45dRAkxqjvVyTv43Cyi0&nl=1&lid=KxstLQrpNlM&cid=mp&cv=0KEyidfD2_M.zh_TW.'
	kmlLayer = new (google.maps.KmlLayer)(kmlUrl, kmlOptions)
		

	# marker1 = new (google.maps.Marker)(
	# 	position: $pin1
	# 	title: '吉祥臻基金會 南區')
	# marker1.setMap map

	# marker2 = new (google.maps.Marker)(
	# 	position: $pin2
	# 	title: '吉祥臻基金會 北區')
	# marker2.setMap map

	# marker3 = new (google.maps.Marker)(
	# 	position: $pin3
	# 	title: '吉祥臻基金會 彌陀區')
	# marker3.setMap map

	return

$ ->
	$("*[js-toggle=\"setMapCenter\"]").on "click", (event) ->
		$mq = window.matchMedia "(max-width: 62em)"
		switch $mq.matches
			when false
				str = $(this).attr("js-li")
				res = str.split(",");
				lng = parseFloat(res[0])
				lat = parseFloat(res[1])
				li = new (google.maps.LatLng)(lng, lat)
				map.setCenter li
				map.setZoom 16
			when true
				add = $(this).attr("js-address")
				str = "https://www.google.com.tw/maps/place/" + add
				window.open str, "_blank"
		return
	return

initialize = ->
	initMap()
	handleNoGeolocation = (errorFlag) ->
		if errorFlag == true
			alert '地圖定位失敗'
		else
			alert '您的瀏覽器不支援定位服務'
		initialLocation = taipei
		map.setCenter initialLocation
		return

	if navigator.geolocation
		browserSupportFlag = true
		navigator.geolocation.getCurrentPosition ((position) ->
			initialLocation = new (google.maps.LatLng)(position.coords.latitude, position.coords.longitude)
			map.setCenter initialLocation
			return
		), ->
			handleNoGeolocation browserSupportFlag
			return
	else
		browserSupportFlag = false
		handleNoGeolocation browserSupportFlag
	return

google.maps.event.addDomListener window, 'load', initialize
