import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/fake_data.dart';
import 'package:shahid_neshan/src/core/widget/custom_appbar_widget.dart';
import 'package:shahid_neshan/src/core/widget/custome_text_field_widget.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/shahid_info_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/widget/shohada_card_widget.dart';

class ListShahidScreen extends StatefulWidget {
  final bool needNavigationBackIcon;

  const ListShahidScreen({super.key, required this.needNavigationBackIcon});

  @override
  State<ListShahidScreen> createState() => _ListShahidScreenState();
}

class _ListShahidScreenState extends State<ListShahidScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        title: "شهدای کاشان",
        action: [],
        fontSize: 20,
        leadingWidth: Sizes.width(context) * 0.5,
        needNavigationBackIcon: widget.needNavigationBackIcon,
      ),
      body: Column(
        children: [
          CustomeTextFieldWidget(controller: searchController, marginTop: 0),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              itemCount: FakeData.shahidKashan.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  height: 125,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShahidInfoScreen(
                                  shahidName: FakeData.shahidKashan[index].title,
                                  image: FakeData.shahidKashan[index].image,
                                  description: FakeData.shahidKashan[index].description,
                                  age: FakeData.shahidKashan[index].age,
                                  mahalTavallod: FakeData.shahidKashan[index].mahalTavalod,
                                  mahalShahadat: FakeData.shahidKashan[index].mahalShahadat,
                                  vasiatNameh: FakeData.shahidKashan[index].vasiatNameh,
                                )));
                      },
                      child: ShohadaCardWidget(shahidKashanModel: FakeData.shahidKashan[index]))),
            ),
          )
        ],
      ),
    );
  }
}
