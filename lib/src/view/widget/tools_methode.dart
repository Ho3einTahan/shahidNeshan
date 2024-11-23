import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/theme.dart';

Widget buildVirtualKeyboard(BuildContext context, String number, TextEditingController otpController) {
  return InkWell(
    onTap: () {
      if (otpController.text.length < 5) {
        otpController.text += number;
      }
    },
    child: Container(
      width: 109,
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4, offset: const Offset(0, 2)),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: CustomTheme.theme.primaryColor, fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
    ),
  );
}

Widget buildVirtualKeyboardRemoveButton(BuildContext context, TextEditingController otpController) {
  return InkWell(
    onTap: () {
      if (otpController.text.isNotEmpty) {
        otpController.text = otpController.text.substring(0, otpController.text.length - 1);
      }
    },
    child: Container(
      width: 109,
      height: 42,
      decoration: BoxDecoration(
        color: CustomTheme.theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4, offset: const Offset(0, 2)),
        ],
      ),
      child: Icon(
        CupertinoIcons.delete_left,
        color: CustomTheme.theme.primaryColor,
      ),
    ),
  );
}
