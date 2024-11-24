import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget> action;
  final double leadingWidth;
  const CustomAppbarWidget({super.key, required this.title, required this.action, required this.leadingWidth});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: leadingWidth,
      leading: Row(
        children: [
          const SizedBox(width: 20,),
          SvgPicture.asset('assets/icon/arrow-right.svg', color: Colors.black,),
          const SizedBox(width: 8,),
          Text(title, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),)
        ],
      ),
      actions: action,
    );
  }
  
  @override
  Size get preferredSize => const Size(double.infinity, 52);
}