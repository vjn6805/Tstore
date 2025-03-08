import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TCOlors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  width: TSizes.iconMd,
                  height: TSizes.iconMd,
                  image: AssetImage(TImages.google))),
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TCOlors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  width: TSizes.iconMd,
                  height: TSizes.iconMd,
                  image: AssetImage(TImages.facebook))),
        ),
      ],
    );
  }
}