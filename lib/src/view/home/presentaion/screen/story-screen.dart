import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/core/fake_data.dart';
import 'package:shahid_neshan/src/view/home/data/shahid_kashan_model.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/shahid_info_screen.dart';
import 'package:story/story_page_view.dart';

// ignore: must_be_immutable
class StoryScreen extends StatelessWidget {
  final ShahidKashanModel shahidKashanModel;
  final int comesIndex;
  const StoryScreen({super.key, required this.shahidKashanModel, required this.comesIndex, });


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            StoryPageView(
              onPageLimitReached: () => context.navigateBack(),
              indicatorVisitedColor: Colors.white,
              indicatorUnvisitedColor: Colors.grey,
              initialPage: comesIndex,
              storyLength: (pageIndex) => 1,
              pageLength:  FakeData.shahidKashan.length,
              itemBuilder: (context, pageIndex, storyIndex) {
                final data = FakeData.shahidKashan[pageIndex];
                return Stack(
                  children: <Widget>[
                    Positioned.fill(child: Image.asset(data.image, fit: BoxFit.cover)),
                    Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12), child: Container(color: Colors.black.withOpacity(0.2)))),
                    Positioned.fill(child: Image.asset(data.image, fit: BoxFit.fitWidth)),
                    Positioned(
                      top: 50,
                      left: 10,
                      right: 20,
                      child: IgnorePointer(
                        ignoring: false,
                        child: GestureDetector(
                          // onTap: ()=> context.navigate(ShahidInfoScreen(
                          //   age: shahidKashanModel.age,
                          //   description: shahidKashanModel.description,
                          //   image: shahidKashanModel.image,
                          //   mahalShahadat: shahidKashanModel.mahalShahadat,
                          //   mahalTavallod: shahidKashanModel.mahalTavalod,
                          //   shahidName: shahidKashanModel.title,
                          //   vasiatNameh: shahidKashanModel.vasiatNameh,
                          // )),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                    width: 44,
                                    height: 44,
                                    decoration: const BoxDecoration(shape: BoxShape.circle),
                                    child: ClipRRect(borderRadius: BorderRadius.circular(32), child: Image.asset(data.image, width: 44, height: 44))),
                                const SizedBox(width: 12),
                                Text(data.title, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
