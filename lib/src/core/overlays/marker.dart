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

part of google_maps.src;

@JsName('google.maps.Marker')
abstract class _Marker extends MVCObject {
  factory _Marker([MarkerOptions opts]) => null;

  static num get MAX_ZINDEX => $js;

  Animation get animation => _getAnimation();
  Animation _getAnimation();
  Attribution get attribution => _getAttribution();
  Attribution _getAttribution();
  bool get clickable => _getClickable();
  bool _getClickable();
  String get cursor => _getCursor();
  String _getCursor();
  bool get draggable => _getDraggable();
  bool _getDraggable();
  dynamic /*String|Icon|GSymbol*/ get icon => (ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .decode(_getIcon());
  dynamic _getIcon();
  MarkerLabel get label => _getLabel();
  MarkerLabel _getLabel();
  dynamic /*GMap|StreetViewPanorama*/ get map => (ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .decode(_getMap());
  dynamic _getMap();
  num get opacity => _getOpacity();
  num _getOpacity();
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace();
  LatLng get position => _getPosition();
  LatLng _getPosition();
  MarkerShape get shape => _getShape();
  MarkerShape _getShape();
  String get title => _getTitle();
  String _getTitle();
  bool get visible => _getVisible();
  bool _getVisible();
  num get zIndex => _getZIndex();
  num _getZIndex();
  set animation(Animation animation) => _setAnimation(animation);
  void _setAnimation(Animation animation);
  set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution);
  set clickable(bool flag) => _setClickable(flag);
  void _setClickable(bool flag);
  set cursor(String cursor) => _setCursor(cursor);
  void _setCursor(String cursor);
  set draggable(bool flag) => _setDraggable(flag);
  void _setDraggable(bool flag);
  set icon(dynamic /*String|Icon|GSymbol*/ icon) => _setIcon((ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<Icon>((o) => Icon.created(o)))
        ..add(JsInterfaceCodec<GSymbol>((o) => GSymbol.created(o))))
      .encode(icon));
  void _setIcon(dynamic /*String|Icon|GSymbol*/ icon);
  set label(dynamic /*String|MarkerLabel*/ label) => _setLabel((ChainedCodec()
        ..add(IdentityCodec<String>())
        ..add(JsInterfaceCodec<MarkerLabel>((o) => MarkerLabel.created(o))))
      .encode(label));
  void _setLabel(dynamic /*String|MarkerLabel*/ label);
  set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap((ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map);
  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity);
  set options(MarkerOptions options) => _setOptions(options);
  void _setOptions(MarkerOptions options);
  set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place);
  set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng);
  set shape(MarkerShape shape) => _setShape(shape);
  void _setShape(MarkerShape shape);
  set title(String title) => _setTitle(title);
  void _setTitle(String title);
  set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);
  set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex);

  Stream get onAnimationChanged =>
      getStream(this, #onAnimationChanged, 'animation_changed');
  Stream<MouseEvent> get onClick =>
      getStream(this, #onClick, 'click', (JsObject o) => MouseEvent.created(o));
  Stream get onClickableChanged =>
      getStream(this, #onClickableChanged, 'clickable_changed');
  Stream get onCursorChanged =>
      getStream(this, #onCursorChanged, 'cursor_changed');
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, 'dblclick', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDrag =>
      getStream(this, #onDrag, 'drag', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, 'dragend', (JsObject o) => MouseEvent.created(o));
  Stream get onDraggableChanged =>
      getStream(this, #onDraggableChanged, 'draggable_changed');
  Stream<MouseEvent> get onDragstart => getStream(
      this, #onDragstart, 'dragstart', (JsObject o) => MouseEvent.created(o));
  Stream get onFlatChanged => getStream(this, #onFlatChanged, 'flat_changed');
  Stream get onIconChanged => getStream(this, #onIconChanged, 'icon_changed');
  Stream<MouseEvent> get onMousedown => getStream(
      this, #onMousedown, 'mousedown', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, 'mouseout', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(
      this, #onMouseover, 'mouseover', (JsObject o) => MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, 'mouseup', (JsObject o) => MouseEvent.created(o));
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, 'position_changed');
  Stream<MouseEvent> get onRightclick => getStream(
      this, #onRightclick, 'rightclick', (JsObject o) => MouseEvent.created(o));
  Stream get onShapeChanged =>
      getStream(this, #onShapeChanged, 'shape_changed');
  Stream get onTitleChanged =>
      getStream(this, #onTitleChanged, 'title_changed');
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, 'visible_changed');
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, 'zindex_changed');
}
