import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shahid_neshan/src/config/get_it.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/view/auth/presentation/screen/auth_screen.dart';
import 'package:shahid_neshan/src/core/utils/bloc_providers.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/onboarding_screen.dart';

void main() async{

  runApp(Application());

}


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.theme,
      // home: TesseractOCRExample(),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: AuthScreen()),
    );
  }
}
