import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

void showErrorSnackBar(BuildContext context, String title){
  return AnimatedSnackBar.material(
      title,
      type: AnimatedSnackBarType.error,
      borderRadius: BorderRadius.circular(10),
      desktopSnackBarPosition: DesktopSnackBarPosition.topCenter,
    ).show(context);
}