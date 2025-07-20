import 'package:catlog/common/widgets/layouts/grid_layout.dart';
import 'package:catlog/common/widgets/product/product_cart/produxt_cart_vertical.dart';
import 'package:catlog/common/widgets/text/section_heading.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///--Brands
            TBrandShowcase(dark: THelperFunctions.isDarkMode(context),images: [TImages.productImage1,TImages.productImage2,TImages.productImage3],),
            SizedBox(height: TSizes.spaceBtwItems,),

            TSectionHeading(title: "You might Like", showActionButton: true, onPressed: (){},),
            SizedBox(height: TSizes.spaceBtwItems,),

            TGridLayout(itemCount: 4, itemBuilder: (_,index)=>TProductCardVertical()),
            SizedBox(height: TSizes.spaceBtwSections,),


          ],
        ),
      ),
      ]
    );
  }
}
