import 'package:flutter/material.dart';
import 'package:learnupp/values/values.dart';

class CurvedBackground extends StatelessWidget {
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;
  final double width;
  final double height;
  final ScrollPhysics physics;
  final ScrollController controller;

  CurvedBackground({
    this.color = AppColors.white,
    this.child,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(Sizes.RADIUS_40),
      topRight: Radius.circular(Sizes.RADIUS_0),
    ),
    this.padding =
        const EdgeInsets.only(left: Sizes.PADDING_16, top: Sizes.PADDING_16),
    this.margin,
    this.width,
    this.height,
    this.physics,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: Container(
        margin: margin,
        child: ListView(
          padding: padding,
          physics: physics,
          controller: controller,
          children: <Widget>[
            child ?? Container(),
          ],
        ),
      ),
    );
  }
}
