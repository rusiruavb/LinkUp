import 'dart:typed_data';

import "package:flutter/material.dart";

class AppRoundedImage extends StatelessWidget {
  final ImageProvider provider;
  final double height;
  final double width;

  const AppRoundedImage(
    this.provider, {
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height / 2),
      child: Image(
        image: provider,
        height: height,
        width: width,
      ),
    );
  }

  factory AppRoundedImage.url(
    String url, {
    double height,
    double width,
  }) {
    return AppRoundedImage(
      NetworkImage(url),
      height: height,
      width: width,
    );
  }

  factory AppRoundedImage.memory(
    Uint8List data, {
    double height,
    double width,
  }) {
    return AppRoundedImage(
      MemoryImage(data),
      height: height,
      width: width,
    );
  }
}
