import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<void> copyTessdataToAppDirectory() async {
  final directory = await getApplicationSupportDirectory();
  final tessdataPath = '${directory.path}/tessdata';
  final tessdataDir = Directory(tessdataPath);

  if (!tessdataDir.existsSync()) {
    tessdataDir.createSync(recursive: true);
  }

  final data = await rootBundle.load('assets/tessdata/fas.traineddata');
  final file = File('$tessdataPath/fas.traineddata');
  file.writeAsBytesSync(data.buffer.asUint8List());
}