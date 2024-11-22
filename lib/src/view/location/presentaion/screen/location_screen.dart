import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  final MapController mapController = MapController();
  final List<Marker> markers = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Text('sl'),
          onPressed: (){
            // context.navigate(widget);
          },
        ),
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(33.98308 ,51.43644),
          initialZoom: 13
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.cafe_mobile',
            maxNativeZoom: 12,
          ),
          MarkerLayer( markers: markers ),
        ],
      ),
    );
  }
}