import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';


Widget headerTitleWidget(BuildContext context, bool needMore, double? width, String title, Widget? targetNavigation)=>SizedBox(
  width: width,
  child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset('assets/icon/appbar_icon.png', ),
          const SizedBox(width: 8,),
          Text(title, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),)
        ],
      ),
      if(needMore)
        InkWell(
          onTap: targetNavigation != null ? ()=> context.navigate(targetNavigation) : null,
          child: Row(children: [
            Text('همه', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).primaryColor, fontSize: 16),),
            const SizedBox(width: 8,),
            SvgPicture.asset('assets/icon/arrow_left.svg')
          ],),
        )
    ],
  ),
);