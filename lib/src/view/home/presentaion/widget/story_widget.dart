import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/view/home/data/story_model.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/story-screen.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel storyModel;

  const StoryWidget({super.key, required this.storyModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => context.navigate(StoryScreen(image: storyModel.image, shahidName: storyModel.name)),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffD1B490),
                  Color(0xffE0CDB5),
                  Color(0xff074B87),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                shape: BoxShape.circle),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              padding: const EdgeInsets.all(4),
              child: FittedBox(
                child: ClipOval(
                    child: SizedBox.fromSize(
                        size: const Size.fromRadius(40),
                        child: Image.asset(
                          storyModel.image,
                          fit: BoxFit.cover,
                        ))),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          storyModel.name,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 14, color: const Color(0xff555555)),
        )
      ],
    );
  }
}
