import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/get_it.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/view/auth/presentation/screen/login_register_screen.dart';
import 'package:shahid_neshan/src/view/auth/presentation/screen/verify_otp_screen.dart';
import 'package:shahid_neshan/src/view/home/story-screen.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';
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
      home: const StoryScreen(),
    );
  }
}
