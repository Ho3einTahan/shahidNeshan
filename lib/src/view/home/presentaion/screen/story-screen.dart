import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:story/story_page_view.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
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
        storyLength: (pageIndex) => 3,
        pageLength: 4,
      ),
    );
  }
}
