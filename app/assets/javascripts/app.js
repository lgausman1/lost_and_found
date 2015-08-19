function initialize() {
	geocoder = new google.maps.Geocoder(); 
	var mapOptions = {
		center: new google.maps.LatLng(37.783333, -122.416667),
		zoom: 13,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}; // end mapOptions

	var map = new google.maps.Map(document.getElementById('map-div'), mapOptions);
	
	 $.get('/posts.json').
   	   done(function (data) {

      // loop through posts and grab obj.location, obj.status, obj.title, obj.id
  		$.each(data,function (ind, obj) {
  			  
  			function create_marker (MapPos) {
  				var marker = new google.maps.Marker({
  					position: MapPos,
        			map: map
  				});

	  			// set up click event and info windows to display content
	  			google.maps.event.addListener(marker, 'click', (function (marker, content, infowindow) {
	  				return function () {
	  					infowindow.setContent(content);
	  					infowindow.open(map, marker);
	  				} 
	  			})
	  			(marker, content, infowindow)); // end listener 

  			} // end create_marker

  			var infowindow = new google.maps.InfoWindow();
        // pass in the post status, title, and link 
  			var content = "<div class='infoDiv'><h1>" + obj.status + "</h1>" 
  								+ "<p>" + obj.title + "</p>" 
  								+ "<button class='btn btn-danger'><a href='posts/" + obj.id + "'>More info</a></button>"
  								+ "</div>";

  			// geocode the address and set the marker 			
  			geocoder.geocode({
  				'address': obj.location + " San Francisco, CA"
  			}, function (results) {
  				//call marker and pass in values
  				var myPos = results[0].geometry.location;
  				create_marker(myPos);
  				
  			} // end function

  			); // end geocode

  		}); // end each
  		
   	}); // end done

}//end initialize

 
   	  
