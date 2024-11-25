import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/view/location/data/model/location_model.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';

class MarkerWidget extends StatelessWidget {
  final LocationModel locationModel;
  final VoidCallback? onTap;
   MarkerWidget({super.key, required this.locationModel, this.onTap, });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<LocationModel?>(
      valueListenable: selected,
      builder: (context, value, child) {
        return InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/icon/marker.svg",
                fit: BoxFit.cover,
                width: locationModel.id == (value?.id ?? 32) ? 85 : 60,
                height:locationModel.id == (value?.id ?? 32) ? 85 : 60,
                color: locationModel.id == (value?.id ?? 32) ? const Color(0xff8B7860) :  Theme.of(context).colorScheme.secondary,
              ),
              Container(
                width: locationModel.id == (value?.id ?? 32) ? 55 : 35,
                height: locationModel.id == (value?.id ?? 32) ? 55 : 35,
                margin: const EdgeInsets.only(right: 4.5, top: 5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    locationModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      );  
      },
    );
  }
}