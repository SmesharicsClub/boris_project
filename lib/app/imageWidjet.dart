import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Image.asset(MusicAssets.buttonPath);
}

class MusicAssets {
  static const String buttonPath = 'assets/images/image.png';
}