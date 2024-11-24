import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/widget/custom_appbar_widget.dart';

class ShowImageWidget extends StatelessWidget {
  final String image;
  final String title;
  const ShowImageWidget({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: title, action: [], leadingWidth: Sizes.width(context)*0.6, backgroundColor: Colors.black,titleColor: Colors.white, iconColor: Colors.white,),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 25),
          alignment: Alignment.center,
          height: Sizes.height(context)*0.5,
          width: Sizes.width(context),
          child: Image.asset(image, width: double.infinity, fit: BoxFit.cover,),
        ),
      ),
    );
  }
}