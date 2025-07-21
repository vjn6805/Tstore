import 'dart:math';

import 'package:catlog/common/styles/shadows.dart';
import 'package:catlog/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:catlog/common/widgets/image/t_round_image.dart';
import 'package:catlog/common/widgets/text/product_title_text.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/enums.dart';
import 'package:catlog/utils/constants/image_string.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../icons/t_circular_icon.dart';
import '../../text/product_price_text.dart';
import '../../text/t_brand_title_text_with_verified_cion.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TCOlors.darkerGrey : TCOlors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TCOlors.dark : TCOlors.light,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TCOlors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25 %",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TCOlors.black),
                      ),
                    ),
                  ),

                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcons(
                        dark: dark,
                        icon: Iconsax.heart,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TBrandTitleWithVerifiedIcon(title: "Nike",),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: TSizes.sm),
                    child: TProductPrice(price: '2500')),
                Container(
                  decoration: BoxDecoration(
                      color: TCOlors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      )),
                  child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: TCOlors.white,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




