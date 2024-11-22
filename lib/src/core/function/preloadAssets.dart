import 'package:flutter/services.dart';

Future<void> preloadAssets() async {
  await rootBundle.load('assets/tessdata_config.json');
  await rootBundle.load('assets/tessdata/fas.traineddata');
}