import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MarkerWidget extends StatelessWidget {
  const MarkerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/icon/marker.svg",
            fit: BoxFit.cover,
            width: 60,
            height: 60,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Container(
            width: 35,
            height: 35,
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
              child: Image.network(
                "https://old.aviny.com/album/tasvir-sazi/shakhes/kamel/40.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}