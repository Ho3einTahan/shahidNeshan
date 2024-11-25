import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        child: SplashScreen())
    );
  }
}
