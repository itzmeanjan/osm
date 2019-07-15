library osm;

import 'package:flutter/material.dart';
import 'data/location.dart';
import 'package:osm_tile_fetcher/osm_tile_fetcher.dart';

class OSM extends StatefulWidget {
  double width;
  double height;
  String cacheLocation;
  int zoomLevel;
  Location location;
  BoundingBox _boundingBox;
  OSM({
    Key key,
    @required this.width,
    @required this.height,
    @required this.cacheLocation,
    @required this.zoomLevel,
    @required this.location,
  }) : super(key: key) {
    _boundingBox = _computeBoundingBox();
  }

  /// Computes bounding box depending upon current centerLocation, width and height
  BoundingBox _computeBoundingBox() => BoundingBox(
        (location.longitude - width / 2) < -180
            ? -180
            : (location.longitude - width / 2),
        (location.latitude - height / 2) < -90
            ? -90
            : (location.latitude - height / 2),
        (location.longitude + width / 2) > 180
            ? 180
            : (location.longitude + width / 2),
        (location.latitude + height / 2) > 90
            ? 90
            : (location.latitude + height / 2),
      );

  @override
  _OSMState createState() => _OSMState();
}

class _OSMState extends State<OSM> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container();
}
