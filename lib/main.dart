import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/get_it.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/widget/bottom_navigation_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/home_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/list_shahid_screen.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';
import 'package:shahid_neshan/src/view/profile/presentaion/screen/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetItDP.setUpGetIt();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      // home: HomeScreen(),
      home: Directionality(
        textDirection: TextDirection.rtl,
        // child: const BottomNavigationWidget()),
        child: ListShahidScreen()),
    );
  }
}
