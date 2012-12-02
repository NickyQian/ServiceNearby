var geocoder;
var map;
var initialLocation;
var marker;
var marker1;
function initialize() {
    initialLocation = new google.maps.LatLng(31.230393, 121.473704);// location:Shanghai
    geocoder = new google.maps.Geocoder();
    var myOptions = {
        zoom : 10,
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

    marker1 = new google.maps.Marker({
        position : new google.maps.LatLng(31.249554, 121.39640099999997),
        map : map,
        title : "marker1",
        animation : google.maps.Animation.DROP,
        draggable : true
    });

    var contentString = "Your position: Detail Information";

    var infowindow = new google.maps.InfoWindow({
        content : contentString
    });

    var infowindow1 = new google.maps.InfoWindow({
            content : "marker1: Detail"
    });

    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map, marker);
    });

    google.maps.event.addListener(marker1, 'click', function() {
        infowindow1.open(map, marker1);
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

$(document).ready(function() {
    initialize();
});