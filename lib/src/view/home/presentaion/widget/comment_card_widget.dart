import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 213,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6,),
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const CircleAvatar(backgroundImage: AssetImage('assets/images/woman.png'),),
                  const SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('فاطمه احمدی', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),),
                      Text.rich(
                        TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12,),
                          children: [
                            const TextSpan(text: "به نیت "),
                            TextSpan(text: "شهید صیاد شیرازی", style: TextStyle(color: Theme.of(context).primaryColor)),
                          ]
                      ))
                    ],
                  )
                ],
              ),
              IconButton(onPressed: (){}, icon: const RotatedBox(quarterTurns: 1, child: Icon(Icons.more_horiz_sharp, color: Color(0xff333333),),))
            ],
          ),
          const SizedBox(height: 8,),
          Text.rich(
            TextSpan(
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14),
              children: const [
                TextSpan(text: "امروز رفتم سر مزار"),
                TextSpan(text: "#شهید_صیاد_شیرازی ... " , style: TextStyle(color: Color(0xff3981EC))),
                TextSpan(text: "حال و هوای خیلی خوبی داشت"),
                TextSpan(text: "سر راه به نیت شهید شیرازی صدقه دادم."),
                TextSpan(text: " شیرازی صدقه دادم. امروز رفتم سر مزار شهید صیاد شیرازیpry")
              ]
          )),
          Text("مشاهده بیشتر"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon/like.svg')),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon/share-one.svg')),
                ],
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon/Vector.svg'))
            ],
          )
        ],
      ),
    );
  }
}