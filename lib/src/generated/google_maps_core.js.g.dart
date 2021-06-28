// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library google_maps.core;

import 'dart:async' show StreamController;
import 'package:universal_html/html.dart';
import 'package:universal_html/js.dart';
import 'package:universal_html/js_util.dart';

class LatLng {
  external LatLng(
      num? lat,
      num? lng, [
        bool? noWrap, // ignore: unused_element
      ]);

  external bool? equals(LatLng? other);

  external String toString();

  external String? toUrlValue([
    num? precision,
  ]);
}

extension LatLng$Ext on LatLng {
  num get lat => _lat();
  num get lng => _lng();

  num _lat() => callMethod(this, 'lat', []);

  num _lng() => callMethod(this, 'lng', []);
}

class LatLngBounds {
  external LatLngBounds([
    LatLng? sw, // ignore: unused_element
    LatLng? ne, // ignore: unused_element
  ]);

  external bool? contains(LatLng? latLng);

  external bool? equals([
    LatLngBounds? other,
  ]);

  external LatLngBounds? extend(LatLng? point);

  external bool? intersects(LatLngBounds? other);

  external bool? isEmpty();

  external LatLng? toSpan();

  external String toString();

  external String? toUrlValue([
    num? precision,
  ]);

  external LatLngBounds? union(LatLngBounds? other);
}

extension LatLngBounds$Ext on LatLngBounds {
  LatLng? get center => _getCenter();
  LatLng get northEast => _getNorthEast();
  LatLng get southWest => _getSouthWest();

  LatLng? _getCenter() => callMethod(this, 'getCenter', []);

  LatLng _getNorthEast() => callMethod(this, 'getNorthEast', []);

  LatLng _getSouthWest() => callMethod(this, 'getSouthWest', []);
}

class Geocoder {
  external Geocoder();
}

extension Geocoder$Ext on Geocoder {
  Future<GeocoderResponse> geocode(
    GeocoderRequest? request, [
    void Function(List<GeocoderResult?>?, GeocoderStatus?)? callback,
  ]) =>
      promiseToFuture(callMethod(this, 'geocode',
          [request, callback == null ? null : allowInterop(callback)]));
}

class GeocoderRequest {
  external factory GeocoderRequest();

  external String? get address;

  external set address(String? value);

  external LatLngBounds? get bounds;

  external set bounds(LatLngBounds? value);

  external GeocoderComponentRestrictions? get componentRestrictions;

  external set componentRestrictions(GeocoderComponentRestrictions? value);

  external LatLng? get location;

  external set location(LatLng? value);

  external String? get placeId;

  external set placeId(String? value);

  external String? get region;

  external set region(String? value);
}

class GeocoderComponentRestrictions {
  external factory GeocoderComponentRestrictions();

  external String? get administrativeArea;

  external set administrativeArea(String? value);

  external String? get country;

  external set country(String? value);

  external String? get locality;

  external set locality(String? value);

  external String? get postalCode;

  external set postalCode(String? value);

  external String? get route;

  external set route(String? value);
}

class GeocoderStatus {
  external static GeocoderStatus get ERROR;
  external static GeocoderStatus get INVALID_REQUEST;
  external static GeocoderStatus get OK;
  external static GeocoderStatus get OVER_QUERY_LIMIT;
  external static GeocoderStatus get REQUEST_DENIED;
  external static GeocoderStatus get UNKNOWN_ERROR;
  external static GeocoderStatus get ZERO_RESULTS;
}

class GeocoderResponse {
  external factory GeocoderResponse();
}

extension GeocoderResponse$Ext on GeocoderResponse {
  List<GeocoderResult?>? get results =>
      getProperty(this, 'results') as List<GeocoderResult?>;

  set results(List<GeocoderResult?>? value) {
    setProperty(this, 'results', value);
  }
}

class GeocoderResult {
  external factory GeocoderResult();

  external GeocoderGeometry? get geometry;

  external set geometry(GeocoderGeometry? value);
}

extension GeocoderResult$Ext on GeocoderResult {
  List<GeocoderAddressComponent?>? get addressComponents =>
      getProperty(this, 'address_components')
           as List<GeocoderAddressComponent?>;

  set addressComponents(List<GeocoderAddressComponent?>? value) {
    setProperty(this, 'address_components', value);
  }

  String? get formattedAddress => getProperty(this, 'formatted_address') as String?;

  set formattedAddress(String? value) {
    setProperty(this, 'formatted_address', value);
  }

  String? get placeId => getProperty(this, 'place_id') as String?;

  set placeId(String? value) {
    setProperty(this, 'place_id', value);
  }

  List<String?>? get types => getProperty(this, 'types') as List<String?>;

  set types(List<String?>? value) {
    setProperty(this, 'types', value);
  }

  bool? get partialMatch => getProperty(this, 'partial_match') as bool?;

  set partialMatch(bool? value) {
    setProperty(this, 'partial_match', value);
  }

  List<String?>? get postcodeLocalities =>
      getProperty(this, 'postcode_localities') as List<String?>;

  set postcodeLocalities(List<String?>? value) {
    setProperty(this, 'postcode_localities', value);
  }
}

class GeocoderAddressComponent {
  external factory GeocoderAddressComponent();
}

extension GeocoderAddressComponent$Ext on GeocoderAddressComponent {
  String? get longName => getProperty(this, 'long_name') as String?;

  set longName(String? value) {
    setProperty(this, 'long_name', value);
  }

  String? get shortName => getProperty(this, 'short_name') as String?;

  set shortName(String? value) {
    setProperty(this, 'short_name', value);
  }

  List<String?>? get types => getProperty(this, 'types') as List<String?>;

  set types(List<String?>? value) {
    setProperty(this, 'types', value);
  }
}

class GeocoderGeometry {
  external factory GeocoderGeometry();

  external LatLng? get location;

  external set location(LatLng? value);

  external LatLngBounds? get viewport;

  external set viewport(LatLngBounds? value);

  external LatLngBounds? get bounds;

  external set bounds(LatLngBounds? value);
}

extension GeocoderGeometry$Ext on GeocoderGeometry {
  GeocoderLocationType? get locationType => getProperty(this, 'location_type') as GeocoderLocationType?;

  set locationType(GeocoderLocationType? value) {
    setProperty(this, 'location_type', value);
  }
}

class GeocoderLocationType {
  external static GeocoderLocationType get APPROXIMATE;
  external static GeocoderLocationType get GEOMETRIC_CENTER;
  external static GeocoderLocationType get RANGE_INTERPOLATED;
  external static GeocoderLocationType get ROOFTOP;
}
