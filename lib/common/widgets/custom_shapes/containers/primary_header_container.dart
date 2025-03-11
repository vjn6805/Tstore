import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_shapes/curved_edge_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(child: Container(
      color: TCOlors.primary,
      padding: EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundcolor: TCOlors.textWhite.withOpacity(0.1),
                )),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundcolor: TCOlors.textWhite.withOpacity(0.1),
              ),
            ),
            child,

          ],
        ),
      ),
    ),);
  }
}

