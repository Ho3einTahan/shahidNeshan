import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:story/story_page_view.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

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
                  Positioned.fill(child: Image.asset("images/shahid-motahari.png", fit: BoxFit.cover)),
                  Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12), child: Container(color: Colors.black.withOpacity(0.2)))),
                  Positioned.fill(child: Image.asset("images/shahid-motahari.png")),
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
                Text('شهید چمران', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: Colors.white)),
                const SizedBox(width: 12),
                Image.asset("assets/images/story-shahid.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
