// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:image_to_color/PickImageWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PickImageWidget(),
    );
  }
}
