import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/get_it.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/widget/bottom_navigation_widget.dart';
import 'package:shahid_neshan/src/view/auth/presentation/screen/login_register_screen.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/onboarding_screen.dart';

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
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationWidget())
    );
  }
}
