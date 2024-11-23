import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/model/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(); Scaffold(
      backgroundColor: CustomTheme.theme.scaffoldBackgroundColor,
      body: PageView.builder(
        controller: _pageController,
        itemCount: OnboardingScreenHandler.getOnboardingItem.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Image.asset("images/${OnboardingScreenHandler.getOnboardingItem[index].image}.png", width: 267, height: 352),
              Text(OnboardingScreenHandler.getOnboardingItem[index].subTitle,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.colorScheme.primary, fontSize: 28, fontWeight: FontWeight.w700)),
              Text(
                OnboardingScreenHandler.getOnboardingItem[index].title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.colorScheme.primary, fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SmoothPageIndicator(controller: _pageController, count: 3, effect: const WormEffect(dotHeight: 10, dotWidth: 10), onDotClicked: (index) {}),
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: CustomTheme.theme.primaryColor, minimumSize: const Size(double.infinity, 48)),
                    onPressed: () {
                      _pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeInSine);
                    },
                    child: const Text("بعدی", style: TextStyle(fontSize: 19))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
