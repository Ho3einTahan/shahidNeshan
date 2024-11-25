import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/widget/custome_text_field_widget.dart';
import 'package:shahid_neshan/src/view/location/presentaion/widget/location_shahid_details_card_widget.dart';
import 'package:shahid_neshan/src/view/location/presentaion/widget/marker_widget.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final MapController mapController = MapController();
  final TextEditingController searchController = TextEditingController();
  List<Marker> markers = const[
    Marker( width: 70, height: 70, point: LatLng(33.97155216989826, 51.4431381225586),  child:  MarkerWidget(), ),
    Marker( width: 70, height: 70, point: LatLng(33.9921920634748, 51.45257949829102),  child:  MarkerWidget(), ),
    Marker( width: 70, height: 70, point: LatLng(33.99083994801115, 51.40648841857911), child:  MarkerWidget(), ),
    Marker( width: 70, height: 70, point: LatLng(33.96386430820156, 51.40125274658204), child:  MarkerWidget(), ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: Sizes.height(context),
              child: FlutterMap(
                options: const MapOptions(
                  initialCenter: LatLng(33.98308, 51.43644),
                  initialZoom: 13,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    maxNativeZoom: 12,
                  ),
                  MarkerLayer(
                    markers: markers,
                  ),
                  CustomeTextFieldWidget(controller: searchController, marginTop: 16,)
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              child: Container(
                height: 60,
                width: Sizes.width(context),
                margin: const EdgeInsets.only(bottom: 10),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) => const LocationShahidDetailsCardWidget(), )
              ),
            )
          ],
        ),
      ),
    );
  }

}



