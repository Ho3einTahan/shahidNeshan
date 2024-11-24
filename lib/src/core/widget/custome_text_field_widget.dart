import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomeTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final double marginTop;
  const CustomeTextFieldWidget({super.key, required this.controller, required this.marginTop});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: marginTop),
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border:OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffD5D5D5), width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'جسجوی شهید...',
          hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(color: const Color(0xffBFBFBF), fontSize: 16),
          prefixIcon: Container(
            width: 10,
            padding: const EdgeInsets.all(13),
            child: FittedBox(child: SvgPicture.asset('assets/icon/search.svg', fit: BoxFit.contain,)))
        ),
      ),
    );
  }
}