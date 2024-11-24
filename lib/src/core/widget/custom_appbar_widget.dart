import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget> action;
  final double leadingWidth;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? titleColor;
  final bool? needNavigationBackIcon;
  const CustomAppbarWidget({super.key, required this.title, required this.action, required this.leadingWidth, this.backgroundColor, this.iconColor, this.titleColor, this.needNavigationBackIcon});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: backgroundColor,
        toolbarHeight: 70,
        leadingWidth: leadingWidth,
        leading: Row(
          children: [

            const SizedBox(width: 20,),
            if(needNavigationBackIcon ?? true)
              SvgPicture.asset('assets/icon/arrow-right.svg', color: iconColor,),
            const SizedBox(width: 8,),
            Text(title, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20,fontWeight: FontWeight.w700, color: titleColor),)
          ],
        ),
        actions: action,
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size(double.infinity, 70);
}