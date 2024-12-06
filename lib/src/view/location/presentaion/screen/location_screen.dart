import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/fake_data.dart';
import 'package:shahid_neshan/src/core/widget/custome_text_field_widget.dart';
import 'package:shahid_neshan/src/view/home/data/shahid_kashan_model.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/shahid_info_screen.dart';
import 'package:shahid_neshan/src/view/location/data/model/location_model.dart';
import 'package:shahid_neshan/src/view/location/presentaion/widget/location_shahid_details_card_widget.dart';
import 'package:shahid_neshan/src/view/location/presentaion/widget/marker_widget.dart';

final ValueNotifier<ShahidKashanModel?> selected = ValueNotifier<ShahidKashanModel?>(null);
class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  final MapController mapController = MapController();
  final TextEditingController searchController = TextEditingController();
  ShahidKashanModel? selectedLocation;
  
  
  late List<Marker> markers;
  
  @override
  void initState() {
    super.initState();
    markers = FakeData.shahidKashan.map((e) => Marker(
    point: e.latLng,
    width: 85,
    height: 85,
    child: MarkerWidget(
      locationModel: e,
      onTap: () {
        setState(() => selectedLocation = e);
        selected.value = e;
      }
    ),
  )).toList();
  }
  

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
                  MarkerLayer( markers: markers ),
                  CustomeTextFieldWidget(controller: searchController, marginTop: 16,),
                ],
              ),
            ),
            
            if(selectedLocation != null)
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
                    itemBuilder:(context, index) => LocationShahidDetailsCardWidget(locationModel: selectedLocation!,), )
                ),
              )
          ],
        ),
      ),
    );
  }
}



