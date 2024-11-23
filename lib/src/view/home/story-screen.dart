import 'package:flutter/material.dart';
import 'package:story/story_page_view.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          return Center(
            child: Text("Index of PageView: $pageIndex Index of story on each page: $storyIndex"),
          );
        },
        storyLength: (pageIndex) {
          return 3;
        },
        pageLength: 4,
      ),
    );
  }
}