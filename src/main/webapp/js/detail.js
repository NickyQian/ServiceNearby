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

$(document).ready(function() {
    initialize();
    
    $('.btn').each(function(i, e) {
    	  $(e).click({idx: i}, function(e) {
    		  showDialog(i);
    	  });
    	});
    
//    $(".btn").click(showDialog);
//    $(".btn").click(showDialog);
});

function showDialog(index) {
	time = $("#time").children().eq(index).text();
	$("#interval").text(time);
    $(".buyBox").dialog({
        modal: true,
        width:500,
        height:250,
        title:'Buy It Now',
        buttons:{
            'BUY':function(){alert("OK");}
        }
    });
}