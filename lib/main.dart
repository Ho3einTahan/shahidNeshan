import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/get_it.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/view/help/presentation/screen/helpToKheyrie_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/story-screen.dart';

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
      home: HelpToKheyrieScreen(),
    );
  }
}
