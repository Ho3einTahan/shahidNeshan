import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/widget/custom_appbar_widget.dart';

class ListShahidScreen extends StatelessWidget {
  const ListShahidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: "شهدای کاشان",action: [],leadingWidth: Sizes.width(context)*0.5,),
    );
  }
}