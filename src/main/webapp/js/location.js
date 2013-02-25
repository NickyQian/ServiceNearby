var geocoder;
var map;
var initialLocation;
var marker;
var marker1;
var marker2;
function initialize() {
	var latitudeInitail = $('#latitudeInitail').text();
    var longitudeInitail = $('#longitudeInitail').text();
    initialLocation = new google.maps.LatLng(latitudeInitail, longitudeInitail);
    geocoder = new google.maps.Geocoder();
    var myOptions = {
        zoom : 13,
        center : initialLocation,
        mapTypeId : google.maps.MapTypeId.ROADMAP
    };
    var $s = $("#map_canvas");
    // map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    map = new google.maps.Map($s[0], myOptions);

    marker = new google.maps.Marker({
        position : initialLocation,
        map : map,
        title : "Your Position.",
        animation : google.maps.Animation.DROP,
        draggable : true
    });
    
    var latitude1 = $('#latitude1').text();
    var longitude1 = $('#longitude1').text();
    marker1 = new google.maps.Marker({
        position : new google.maps.LatLng(latitude1, longitude1),
        map : map,
        title : "marker1",
        animation : google.maps.Animation.DROP,
        draggable : true
    });

    var latitude2 = $('#latitude2').text();
    var longitude2 = $('#longitude2').text();
    marker2 = new google.maps.Marker({
        position : new google.maps.LatLng(latitude2, longitude2),
        map : map,
        title : "marker2",
        animation : google.maps.Animation.DROP,
        draggable : true
    });

    var contentString = "Your position!";

    var infowindow = new google.maps.InfoWindow({
        content : contentString
    });

    var infowindow1 = new google.maps.InfoWindow({
            content : $('#title1').text()
    });

    var infowindow2 = new google.maps.InfoWindow({
        content : $('#title2').text()
    });
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map, marker);
    });

    google.maps.event.addListener(marker1, 'click', function() {
        infowindow1.open(map, marker1);
    });
    google.maps.event.addListener(marker2, 'click', function() {
        infowindow2.open(map, marker2);
    });
}

// function findPosition() {
//     // Try W3C Geolocation (Preferred)
//     if (navigator.geolocation) {
//         browserSupportFlag = true;
//         // this method is asynchronous!
//         navigator.geolocation.getCurrentPosition(function(position) {
//             initialLocation = new google.maps.LatLng(position.coords.latitude,
//                     position.coords.longitude);
//         }, function() {
//             handleNoGeolocation(browserSupportFlag);
//         });
//         // Try Google Gears Geolocation
//     } else if (google.gears) {
//         browserSupportFlag = true;
//         var geo = google.gears.factory.create('beta.geolocation');
//         geo.getCurrentPosition(function(position) {
//             initialLocation = new google.maps.LatLng(position.latitude,
//                     position.longitude);
//         }, function() {
//             handleNoGeoLocation(browserSupportFlag);
//         });
//         // Browser doesn't support Geolocation
//     } else {
//         browserSupportFlag = false;
//         handleNoGeolocation(browserSupportFlag);
//     }

//     function handleNoGeolocation(errorFlag) {
//         if (errorFlag == true) {
//             alert("Geolocation service failed.");
//             initialLocation = new google.maps.LatLng(31.230393, 121.473704);
//         } else {
//             alert("Your browser doesn't support geolocation. We've placed you in Siberia.");
//             initialLocation = new google.maps.LatLng(31.230393, 121.473704);
//         }
//     }
// }

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

$(document).ready(function() {
    initialize();
});

$(".item1").live({
    mouseenter:
    function(){
        marker1.setAnimation(google.maps.Animation.BOUNCE);
    },
    mouseleave:
    function(){
        marker1.setAnimation(null);
    }
})

$(".item2").live({
    mouseenter:
    function(){
        marker2.setAnimation(google.maps.Animation.BOUNCE);
    },
    mouseleave:
    function(){
        marker2.setAnimation(null);
    }
})
