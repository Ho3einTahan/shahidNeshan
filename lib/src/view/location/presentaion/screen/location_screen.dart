import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
=======
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'dart:ui' as ui;
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/view/location/data/model/martyr_model.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
<<<<<<< HEAD
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
    );
  }
=======

  final MapController mapController = MapController();
  late List<Marker> markers;

  @override
  void initState() {
    super.initState();
    markers = [
      // Marker(point: const LatLng(33.98308 ,51.43644), child: markerWidget())
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(33.98308 ,51.43644),
          initialZoom: 13
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            maxNativeZoom: 12,
          ),
          MarkerLayer( markers: markers)
          ] ),
    );
  }


  Widget markerWidget(MartyrModel data)=> Container(
    alignment: Alignment.center,
    child: Stack(
      children: [
        SvgPicture.asset("assets/icon/marker.svg", fit: BoxFit.cover,width: 70 ,height: 70 ),
        Container(
          width:  40,
          height: 40,
          margin: const EdgeInsets.only(left: 5, top: 5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black
              )
            ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network("https://old.aviny.com/album/tasvir-sazi/shakhes/kamel/40.jpg", fit: BoxFit.cover,)))
      ],
    ),
  );

>>>>>>> 4adf7973c527baa32e95ae564d73abed37738755
}