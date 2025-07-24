import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/custom_shapes/curved_shapes/curved_edge_widget.dart';
import 'package:catlog/common/widgets/icons/t_circular_icon.dart';
import 'package:catlog/common/widgets/image/t_round_image.dart';
import 'package:catlog/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:catlog/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:catlog/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/image_string.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),

            Padding(padding: EdgeInsets.only(right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
              child:Column(
                children: [
                  TRatingAndShare(),
                  TProductMetaData()


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




