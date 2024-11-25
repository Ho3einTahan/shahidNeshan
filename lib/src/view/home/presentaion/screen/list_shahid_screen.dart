import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/fake_data.dart';
import 'package:shahid_neshan/src/core/widget/custom_appbar_widget.dart';
import 'package:shahid_neshan/src/core/widget/custome_text_field_widget.dart';
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
      appBar: CustomAppbarWidget(title: "شهدای کاشان",action: [],leadingWidth: Sizes.width(context)*0.5,needNavigationBackIcon: widget.needNavigationBackIcon,),
      body: Column(
        children: [
          CustomeTextFieldWidget(controller: searchController, marginTop: 0,),
          const SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              itemCount: FakeData.shahidKashan.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>  Container(
                margin: const EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                height: 125,
                child: ShohadaCardWidget(shahidKashanModel: FakeData.shahidKashan[index],)),),
          )
        ],
      ),
    );
  }
}