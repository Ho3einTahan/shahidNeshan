import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';

class ShohadaCardWidget extends StatelessWidget {
  const ShohadaCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: Sizes.width(context)*0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffE6E6E6),width: 1)
      ),
      child: Row(
        children: [
          SizedBox(
            height: Sizes.height(context)*0.2,
            width: Sizes.width(context)*0.3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10)
              ),
              child: Image.asset('assets/images/shohada_image.png', fit: BoxFit.cover,))),
          const SizedBox(width: 8,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('شهید هاشمیان زاده برزکی', style: Theme.of(context).textTheme.bodyLarge,),
                  const SizedBox(height: 4,),
                  Text(
                      '4 خرداد ماه 1332 درکاشان متولد شد پس \nاز اخذ دیپلم صنعتی ، درسال50 وارد دانشگاه علم وصنعت شد',
                      overflow: TextOverflow.ellipsis, 
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontSize: 12, color: const Color(0xff555555)
                      ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('درباره شهید', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14,color: Theme.of(context).primaryColor),)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}