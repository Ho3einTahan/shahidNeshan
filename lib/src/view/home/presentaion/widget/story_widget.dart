import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffD1B490),
                Color(0xffE0CDB5),
                Color(0xff074B87),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            ),
            shape: BoxShape.circle
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            padding: const EdgeInsets.all(4),
            child: FittedBox(
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(40),
                  child: Image.network('https://ana.ir/files/fa/news/1403/1/13/499101_555.jpg',fit: BoxFit.cover,))),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text('شهید چمران',style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 14, color: const Color(0xff555555))  ,)
      ],
    );
  }
}