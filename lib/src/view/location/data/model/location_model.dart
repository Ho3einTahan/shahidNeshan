import 'package:latlong2/latlong.dart';

class LocationModel{
  final int id;
  final String name;
  final String image;
  final LatLng latLng;
  LocationModel(this.id, this.name, this.image, this.latLng);
}