import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
InfoWindow infowindow;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(-33.8665433, 151.1956316)
    ..zoom = 15;

  map = GMap(document.getElementById('map-canvas'), mapOptions);

  final input = document.getElementById('pac-input') as InputElement;

  final autocomplete = Autocomplete(input)..bindTo('bounds', map);

  map.controls[ControlPosition.TOP_LEFT].push(input);

  final infowindow = InfoWindow();
  final marker = Marker(MarkerOptions()..map = map);
  marker.onClick.listen((_) {
    infowindow.open(map, marker);
  });

  autocomplete.onPlaceChanged.listen((_) {
    infowindow.close();
    final place = autocomplete.place;
    if (place.geometry == null) {
      return;
    }

    if (place.geometry.viewport != null) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.center = place.geometry.location;
      map.zoom = 17;
    }

    // Set the position of the marker using the place ID and location
    marker
      ..place = (MarkerPlace()
        ..placeId = place.placeId
        ..location = place.geometry.location)
      ..visible = true;

    infowindow
      ..content = '<div><strong>${place.name}</strong><br>'
          'Place ID: ${place.placeId}<br>${place.formattedAddress}'
      ..open(map, marker);
  });
}
