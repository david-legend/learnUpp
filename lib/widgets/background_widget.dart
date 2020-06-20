import 'package:flutter/material.dart';
import 'package:learnupp/presentation/layout/adaptive.dart';
import 'package:learnupp/values/values.dart';

class BackgroundWidget extends StatelessWidget {
  final bool hasImage;
  final ImageProvider image;
  final Color color;
  final double height;

  BackgroundWidget({
    this.hasImage = false,
    this.color = AppColors.primaryColor,
    this.height,
    this.image,
  })  : assert(hasImage != null),
        assert(color == null || image == null,
            'Cannot provide both a color and a image');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? heightOfScreen(context),
      decoration: hasImage
          ? BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            )
          : BoxDecoration(color: color),
    );
  }
}
