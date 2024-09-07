import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Screen'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfMaps(
            layers: [
              MapShapeLayer(
                source: MapShapeSource.asset(
                  'assets/images/Map.osm', // Path to your OSM file
                  shapeDataField: 'name',  // Field used to match the shapes (adjust as needed)
                ),
                tooltipSettings: MapTooltipSettings(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
