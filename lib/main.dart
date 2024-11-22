

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
      theme: CustomeTheme.theme,
      home: OnboardingScreen(),
    );
  }
}
