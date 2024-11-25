import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/core/fake_data.dart';
import 'package:shahid_neshan/src/core/widget/header_title_widget.dart';
import 'package:shahid_neshan/src/view/help/presentation/screen/helpToKheyrie_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/list_shahid_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/comment_card_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/shohada_card_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/story_widget.dart';
import 'package:shahid_neshan/src/view/panorama/presentation/screen/panorama_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 13),
                child: Row(
                  children: [
                    const SizedBox(width: 20,),
                    headerTitleWidget(context, false, null, 'روایتی از شهید', null)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: FakeData.fakeStoryModelData.length,
                  padding: const EdgeInsets.only(right: 15),
                  itemBuilder: (context, index) => StoryWidget(storyModel: FakeData.fakeStoryModelData[index],)),
              ),
              InkWell(
                onTap: ()=> context.navigate(const HelpToKheyrieScreen()),
                child: Container(
                  width: Sizes.width(context),
                  height: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                      image: const DecorationImage(image: AssetImage('assets/images/shadow.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text('کمک به خیریه به نیت شهدا', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white, fontSize: 14), )),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: ()=> context.navigate(const PanoramaScreen()),
                child: Container(
                  width: Sizes.width(context),
                  height: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/home_help.png'),
                      fit: BoxFit.cover
                    ),
                    boxShadow: const [
                      BoxShadow(color: Colors.black),
                    ],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage('assets/images/shadow.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text('تور ۳۶۰درجه گلزار شهدای کاشان', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white, fontSize: 14), )),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: headerTitleWidget(context, true, Sizes.width(context), "شهدای کاشان", const ListShahidScreen(needNavigationBackIcon: true,)), ),
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                      itemCount: FakeData.shahidKashan.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => ShohadaCardWidget(shahidKashanModel: FakeData.shahidKashan[index],)
                    ),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.only(top: 24),
                    child: headerTitleWidget(context, false, Sizes.width(context), "به نیت شهدا...", null)),
                  const SizedBox(height: 15,),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>  CommentCardWidget(images: index == 0 ? [] : FakeData.postsImages,)
                  )
                ],
              ),
              const SizedBox(height: 50,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: SvgPicture.asset('assets/icon/floatin.svg'),
        ),
      ),
    );
  }
}