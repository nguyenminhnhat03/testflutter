import 'dart:io';
import 'package:flutter/material.dart';
import'package:image_picker/image_picker.dart';

class ImageDisplayScreen extends StatelessWidget {
  const ImageDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Ảnh"),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Image.asset('assets/image/01.jpg'),
            ),
            Expanded(
              child: Image.asset('assets/image/02.jpg'),
            ),
          ],
        ),
      ),

    );
  }
}
