// ignore_for_file: file_names, unused_local_variable, avoid_print, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_to_color/ImagePickerWidget.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    File image;
    final picker = ImagePicker();
    Future getImage() async {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        image = File(pickedImage.path);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ColorPickerWidget(
                image: image,
              ),
            ));
      } else {}
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getImage();
          },
          child: const Text("Pick Image"),
        ),
      ),
    );
  }
}
