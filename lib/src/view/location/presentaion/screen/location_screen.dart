import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Text('sl'),
          onPressed: (){
            // context.navigate(widget);
          },
        ),
      ),
    );
  }
}