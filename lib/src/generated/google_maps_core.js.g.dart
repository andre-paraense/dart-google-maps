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
  LatLng(
      num? lat,
      num? lng, [
        bool? noWrap, // ignore: unused_element
      ]);

  bool? equals(LatLng? other);

  String toString();

  String? toUrlValue([
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
  LatLngBounds([
    LatLng? sw, // ignore: unused_element
    LatLng? ne, // ignore: unused_element
  ]);

  bool? contains(LatLng? latLng);

  bool? equals([
    LatLngBounds? other,
  ]);

  LatLngBounds? extend(LatLng? point);

  bool? intersects(LatLngBounds? other);

  bool? isEmpty();

  LatLng? toSpan();

  String toString();

  String? toUrlValue([
    num? precision,
  ]);

  LatLngBounds? union(LatLngBounds? other);
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
  Geocoder();
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
  factory GeocoderRequest();

  String? get address;

  set address(String? value);

  LatLngBounds? get bounds;

  set bounds(LatLngBounds? value);

  GeocoderComponentRestrictions? get componentRestrictions;

  set componentRestrictions(GeocoderComponentRestrictions? value);

  LatLng? get location;

  set location(LatLng? value);

  String? get placeId;

  set placeId(String? value);

  String? get region;

  set region(String? value);
}

class GeocoderComponentRestrictions {
  factory GeocoderComponentRestrictions();

  String? get administrativeArea;

  set administrativeArea(String? value);

  String? get country;

  set country(String? value);

  String? get locality;

  set locality(String? value);

  String? get postalCode;

  set postalCode(String? value);

  String? get route;

  set route(String? value);
}

class GeocoderStatus {
  static GeocoderStatus get ERROR;
  static GeocoderStatus get INVALID_REQUEST;
  static GeocoderStatus get OK;
  static GeocoderStatus get OVER_QUERY_LIMIT;
  static GeocoderStatus get REQUEST_DENIED;
  static GeocoderStatus get UNKNOWN_ERROR;
  static GeocoderStatus get ZERO_RESULTS;
}

class GeocoderResponse {
  factory GeocoderResponse();
}

extension GeocoderResponse$Ext on GeocoderResponse {
  List<GeocoderResult?>? get results =>
      getProperty(this, 'results') as List<GeocoderResult?>;

  set results(List<GeocoderResult?>? value) {
    setProperty(this, 'results', value);
  }
}

class GeocoderResult {
  factory GeocoderResult();

  GeocoderGeometry? get geometry;

  set geometry(GeocoderGeometry? value);
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
  factory GeocoderAddressComponent();
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
  factory GeocoderGeometry();

  LatLng? get location;

  set location(LatLng? value);

  LatLngBounds? get viewport;

  set viewport(LatLngBounds? value);

  LatLngBounds? get bounds;

  set bounds(LatLngBounds? value);
}

extension GeocoderGeometry$Ext on GeocoderGeometry {
  GeocoderLocationType? get locationType => getProperty(this, 'location_type') as GeocoderLocationType?;

  set locationType(GeocoderLocationType? value) {
    setProperty(this, 'location_type', value);
  }
}

class GeocoderLocationType {
  static GeocoderLocationType get APPROXIMATE;
  static GeocoderLocationType get GEOMETRIC_CENTER;
  static GeocoderLocationType get RANGE_INTERPOLATED;
  static GeocoderLocationType get ROOFTOP;
}
