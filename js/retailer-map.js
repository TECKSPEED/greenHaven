jQuery(document).ready(function () {
// JavaScript Document
    (function (jQuery) {
        /*
        *  render_map
        *
        *  This function will render a Google Map onto the selected jQuery element
        *
        *  @type	function
        *  @date	8/11/2013
        *  @since	4.3.0
        *
        *  @param	jQueryel (jQuery element)
        *  @return	n/a
        */
        function render_map(jQueryel) {
            // var
            var jQuerymarkers = jQueryel.find('.marker');
            // vars
            var args = {
                zoom: 16,
                center: new google.maps.LatLng(0, 0),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            // create map
            var map = new google.maps.Map(jQueryel[0], args);
            // add a markers reference
            map.markers = [];
            // add markers
            jQuerymarkers.each(function () {
                add_marker(jQuery(this), map);
            });
            // center map
            center_map(map);
        }

        /*
        *  add_marker
        *
        *  This function will add a marker to the selected Google Map
        *
        *  @type	function
        *  @date	8/11/2013
        *  @since	4.3.0
        *
        *  @param	jQuerymarker (jQuery element)
        *  @param	map (Google Map object)
        *  @return	n/a
        */
        function add_marker(jQuerymarker, map) {
            // var
            var latlng = new google.maps.LatLng(jQuerymarker.attr('data-lat'), jQuerymarker.attr('data-lng'));
            // create marker
            var marker = new google.maps.Marker({
                position: latlng,
                map: map
            });
            // add to array
            map.markers.push(marker);
            // if marker contains HTML, add it to an infoWindow
            if (jQuerymarker.html()) {
                // create info window
                var infowindow = new google.maps.InfoWindow({
                    content: jQuerymarker.html()
                });
                // show info window when marker is clicked
                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
            }
        }

        /*
        *  center_map
        *
        *  This function will center the map, showing all markers attached to this map
        *
        *  @type	function
        *  @date	8/11/2013
        *  @since	4.3.0
        *
        *  @param	map (Google Map object)
        *  @return	n/a
        */
        function center_map(map) {
            // vars
            var bounds = new google.maps.LatLngBounds();
            // loop through all markers and create bounds
            jQuery.each(map.markers, function (i, marker) {
                var latlng = new google.maps.LatLng(marker.position.lat(), marker.position.lng());
                bounds.extend(latlng);
            });
            // only 1 marker?
            if (map.markers.length == 1) {
                // set center of map
                map.setCenter(bounds.getCenter());
                map.setZoom(16);
            }
            else {
                // fit to bounds
                map.fitBounds(bounds);
            }
        }

        /*
        *  document ready
        *
        *  This function will render each map when the document is ready (page has loaded)
        *
        *  @type	function
        *  @date	8/11/2013
        *  @since	5.0.0
        *
        *  @param	n/a
        *  @return	n/a
        */
        jQuery(document).ready(function () {
            jQuery('.acf-map').each(function () {
                render_map(jQuery(this));
            });
        });
    })(jQuery);
});