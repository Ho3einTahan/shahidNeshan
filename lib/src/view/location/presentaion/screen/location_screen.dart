import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/view/location/data/model/martyr_model.dart';
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
  late List<Marker> markers;

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
                  const MarkerLayer(
                    markers: [
                      Marker(
                        width: 70,
                        height: 70,
                        point: LatLng(33.98308, 51.43644),
                        child: MarkerWidget(),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border:OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffD5D5D5), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'جسجوی شهید...',
                        hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(color: const Color(0xffBFBFBF), fontSize: 16),
                        prefixIcon: Container(
                          width: 10,
                          padding: const EdgeInsets.all(13),
                          child: FittedBox(child: SvgPicture.asset('assets/icon/search.svg', fit: BoxFit.contain,)))
                      ),
                    ),
                  ),
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



