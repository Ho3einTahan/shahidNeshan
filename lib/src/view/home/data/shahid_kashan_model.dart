import 'package:latlong2/latlong.dart';

class ShahidKashanModel {
  final String title;
  final String description;
  final String image;
  final String age;
  final String mahalTavalod;
  final String mahalShahadat;
  final String vasiatNameh;
  final LatLng latLng;
  final int id;

  ShahidKashanModel({required this.id, required this.latLng ,required this.title, required this.description, required this.image, required this.age, required this.mahalTavalod, required this.mahalShahadat, required this.vasiatNameh});
}
