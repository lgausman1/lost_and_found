function initialize() {
	geocoder = new google.maps.Geocoder(); 
	var mapOptions = {
		center: new google.maps.LatLng(37.783333, -122.416667),
		zoom: 13,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}; // end mapOptions

	var map = new google.maps.Map(document.getElementById('map-div'), mapOptions);
	
function codeAddresses () {
	 $.get('/posts.json').
   	   done(function (data) {
  		//console.log(data);
  		var addressArray = [];
  		var titleArray = [];
  		for(var i = 0; i < data.length; i++) {
  			addressArray.push(data[i].location);
  			titleArray.push(data[i].title);
  		} // end for loop
  		$.each(addressArray, function (index, address) {
  			//console.log(index + ": " + address);
  			geocoder.geocode({
  				'address': address + " San Francisco, CA"
  			}, function(results, status) {
  				if(status == google.maps.GeocoderStatus.OK) {
  					var marker = new google.maps.Marker({
  						position: results[0].geometry.location,
  						map: map
  					}); // end map				
  				}
  				else {
  					console.log("Geocode was not successful: " + status);
  				} // end if
  			}); // end geocoder
  		}); // end each addressArray

  		$.each(titleArray, function (index, title) {
			 var infowindow = new google.maps.InfoWindow({
			 	content: title
			 });


  		}); // end each titleArray
  		
   	}); // end done
}

codeAddresses();

}//end initialize

 // google.maps.event.addListener(marker, 'mouseover', (function(marker) { // marker is not defined
 //    return function() {
 //        var content = title;
 //        infowindow.setContent(content);
 //        infowindow.open(map, marker);
 //    }
 //  })(marker)); // end event listener
   	  
