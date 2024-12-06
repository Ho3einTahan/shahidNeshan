// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/view/onboarding/presentation/screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 3), () => context.navigate(const OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context),
      height: Sizes.height(context),
      decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      child: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          curve: Curves.ease,
          duration: const Duration(seconds: 4),
          builder: (context, value, child) => Opacity(opacity: value, child: Image.asset('assets/images/logo.png', width: Sizes.width(context))),
        ),
      ),
    );
  }
}
