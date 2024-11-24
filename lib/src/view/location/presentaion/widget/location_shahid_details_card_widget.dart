

import 'package:flutter/material.dart';

import '../../../../core/constans/sizes.dart';

class LocationShahidDetailsCardWidget extends StatelessWidget {
  const LocationShahidDetailsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context)*0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffE6E6E6),width: 1)
      ),
      child: Row(
        children: [
          SizedBox(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 2,child: Text('شهید هاشمیان زاده برزکی', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),)),
                  Expanded(child: Text('درباره شهید', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14,color: Theme.of(context).primaryColor),))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}