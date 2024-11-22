import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext{
  
  navigate(Widget widget)=> Navigator.of(this).push(MaterialPageRoute(builder: (context) => widget));
  
  navigateReplacement(Widget widget)=> Navigator.of(this).pushReplacement(MaterialPageRoute(builder: (context) => widget));
  
  navigateBack()=> Navigator.of(this).pop();

}