import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:story/story_page_view.dart';

class StoryScreen extends StatelessWidget {
  StoryScreen({super.key, required this.image, required this.shahidName});

  String image;
  String shahidName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryPageView(
            indicatorVisitedColor: Colors.white,
            indicatorUnvisitedColor: Colors.grey,
            itemBuilder: (context, pageIndex, storyIndex) {
              return Stack(
                children: <Widget>[
                  Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),
                  Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12), child: Container(color: Colors.black.withOpacity(0.2)))),
                  Positioned.fill(child: Image.asset(image, fit: BoxFit.fitWidth)),
                ],
              );
            },
            storyLength: (pageIndex) => 1,
            pageLength: 4,
          ),
          Positioned(
            top: 50,
            left: 10,
            right: 20,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(color: CustomTheme.theme.colorScheme.primary, borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text('دنبال کردن', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500))),
                ),
                const Spacer(),
                Text(shahidName, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: Colors.white)),
                const SizedBox(width: 12),
                Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipRRect(borderRadius: BorderRadius.circular(32), child: Image.asset(image, width: 44, height: 44))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
