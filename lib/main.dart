import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/widget/bottom_navigation_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/home_screen.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';

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
        child: BottomNavigationWidget()),
    );
  }
}
