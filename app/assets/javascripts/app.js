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
  		//console.log(data);

  		$.each(data,function (ind, obj) {
  			//obj.location, obj.status, obj.title, obj.id
  			  
  			function create_marker (MapPos) {
  				var marker = new google.maps.Marker({
  					position: MapPos,
        			map: map
  				});



	  			// pass in the status, title, and link  !!!!! marker not defined !!!!
	  			google.maps.event.addListener(marker, 'click', (function (marker, content, infowindow) {
	  				return function () {
	  					infowindow.setContent(content);
	  					infowindow.open(map, marker);
	  				} // end return function
	  			})
	  			(marker, content, infowindow)); // end listener 



  			} // end create_marker

  			var infowindow = new google.maps.InfoWindow();

  			var content = "<div>" + obj.status + 
  								"<br>" + obj.title + 
  								"<br>" + obj.id +
  								"</div>";

  			console.log(content);

  			// geocode the address and set the marker 			
  			geocoder.geocode({
  				'address': obj.location + " San Francisco, CA"
  			}, function (results) {
  				//call marker and pass in values
  				myPos = results[0].geometry.location;
  				create_marker(myPos);
  				
  			} // end function

  			); // end geocode


  		}); // end each
  		
   	}); // end done


}//end initialize

 
   	  
