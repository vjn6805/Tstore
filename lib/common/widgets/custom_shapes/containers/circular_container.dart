import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.raduis = 400,
    this.padding = 0,
    this.child,
    this.backgroundcolor = TCOlors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double raduis;
  final double padding;
  final Widget? child;
  final Color backgroundcolor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(raduis),
          color: TCOlors.black.withOpacity(0.1)),
      child: child,
    );
  }
}
