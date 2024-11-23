import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme.dart';

Widget buildVirtualKeyboard(BuildContext context, String number) {
  return Container(
    width: 109,
    height: 42,
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
    child: Center(
      child: Text(number, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.primaryColor, fontSize: 24, fontWeight: FontWeight.w400)),
    ),
  );
}

Widget buildVirtualKeyboardRemoveButton() {
  return Container(
    width: 109,
    height: 42,
    decoration: BoxDecoration(color: CustomTheme.theme.colorScheme.onPrimary, borderRadius: BorderRadius.circular(4)),
    child: Icon(CupertinoIcons.delete_left, color: CustomTheme.theme.primaryColor),
  );
}