import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/widget/header_title_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/comment_card_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/shohada_card_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: Sizes.width(context)*0.5,
        leading: Row(
          children: [
            const SizedBox(width: 20,),
            headerTitleWidget(context, false, null, 'روایتی از شهید')
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: const EdgeInsets.only(right: 15),
                itemBuilder: (context, index) => const StoryWidget()),
            ),
            Container(
              width: Sizes.width(context),
              height: Sizes.height(context)*0.25,
              margin: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/help.png'),
                  fit: BoxFit.cover
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.black),
                ],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/shadow.png'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text('کمک به خیریه به نیت شهدا', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white), )),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: headerTitleWidget(context, true, Sizes.width(context), "شهدای کاشان")),
                const SizedBox(height: 15,),
                SizedBox(
                  height: 125,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const ShohadaCardWidget()
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 24),
                  child: headerTitleWidget(context, true, Sizes.width(context), "به نیت شهدا...")),
                const SizedBox(height: 15,),
                SizedBox(
                  height: Sizes.height(context)*0.44,
                  child: ListView.builder(
                    itemCount: 2,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const CommentCardWidget()
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}