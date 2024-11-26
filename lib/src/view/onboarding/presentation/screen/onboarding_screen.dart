import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/view/auth/presentation/screen/login_register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../location/presentaion/data/model/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: const SizedBox.shrink(),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: OnboardingScreenHandler.getOnboardingItem.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Image.asset("images/${OnboardingScreenHandler.getOnboardingItem[index].image}.png", width: 267, height: 330),
                    Text(OnboardingScreenHandler.getOnboardingItem[index].subTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.colorScheme.primary, fontSize: 28, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    Text(
                      OnboardingScreenHandler.getOnboardingItem[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: const Color(0xff5A87AF), fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(dotHeight: 8, paintStyle: PaintingStyle.stroke, dotWidth: 8, activeDotColor: Theme.of(context).primaryColor),
                onDotClicked: (index) {}),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomTheme.theme.primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), minimumSize: const Size(double.infinity, 48)),
                onPressed: () {
                  _pageController.page == 2 
                    ? context.navigate(LoginRegisterScreen()) 
                    : _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
                },
                child: Text("بعدی", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16, color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
