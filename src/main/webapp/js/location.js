var geocoder;
var map;
var initialLocation;
function initialize() {
	initialLocation = new google.maps.LatLng(31.230393, 121.473704);// location:Shanghai
	geocoder = new google.maps.Geocoder();
	var myOptions = {
		zoom : 10,
		center : initialLocation,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	};

	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

	var marker = new google.maps.Marker({
		position : initialLocation,
		map : map,
		title : "Your Position.",
		animation : google.maps.Animation.DROP,
		draggable : true
	});

	var contentString = "Detail Information";

	var infowindow = new google.maps.InfoWindow({
		content : contentString
	});

	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
}

function findPosition() {
	// Try W3C Geolocation (Preferred)
	if (navigator.geolocation) {
		browserSupportFlag = true;
		// this method is asynchronous!
		navigator.geolocation.getCurrentPosition(function(position) {
			initialLocation = new google.maps.LatLng(position.coords.latitude,
					position.coords.longitude);
		}, function() {
			handleNoGeolocation(browserSupportFlag);
		});
		// Try Google Gears Geolocation
	} else if (google.gears) {
		browserSupportFlag = true;
		var geo = google.gears.factory.create('beta.geolocation');
		geo.getCurrentPosition(function(position) {
			initialLocation = new google.maps.LatLng(position.latitude,
					position.longitude);
		}, function() {
			handleNoGeoLocation(browserSupportFlag);
		});
		// Browser doesn't support Geolocation
	} else {
		browserSupportFlag = false;
		handleNoGeolocation(browserSupportFlag);
	}

	function handleNoGeolocation(errorFlag) {
		if (errorFlag == true) {
			alert("Geolocation service failed.");
			initialLocation = new google.maps.LatLng(31.230393, 121.473704);
		} else {
			alert("Your browser doesn't support geolocation. We've placed you in Siberia.");
			initialLocation = new google.maps.LatLng(31.230393, 121.473704);
		}
	}
}

function codeAddress() {
	var address = document.getElementById("address").value;
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.location);
			marker = new google.maps.Marker({
				map : map,
				position : results[0].geometry.location
			});
		} else {
			alert("Geocode was not successful for the following reason: "
					+ status);
		}
	});
}

function keySubmit() {
	if (event.keyCode == 13) // when press enter key
		document.getElementById("submitLoc").click(); // call submit
}
