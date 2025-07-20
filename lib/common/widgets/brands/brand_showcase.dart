import 'package:catlog/common/widgets/brands/t_brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.dark,
    required this.images,
  });

  final bool dark;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TCOlors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          TBrandCard(dark: dark, showBorder: false),
          SizedBox(height: TSizes.spaceBtwItems,),
          Row(
            children: images
                .map((image) => brandProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TCOlors.darkerGrey
            : TCOlors.light,
        margin: EdgeInsets.only(right: TSizes.md),
        padding: EdgeInsets.only(right: TSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}