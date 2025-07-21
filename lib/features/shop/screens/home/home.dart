import 'package:carousel_slider/carousel_slider.dart';
import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/custom_shapes/curved_shapes/curved_edges.dart';
import 'package:catlog/common/widgets/product/product_cart/produxt_cart_vertical.dart';
import 'package:catlog/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:catlog/features/shop/screens/home/widgets/home_categories.dart';
import 'package:catlog/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/enums.dart';
import 'package:catlog/utils/constants/image_string.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/constants/text_strings.dart';
import 'package:catlog/utils/device/device_utilities.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/curved_shapes/curved_edge_widget.dart';
import '../../../../common/widgets/image/t_round_image.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../common/widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header section
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// ---Appbar custom (name and cart icon)---
                  THomeAppBar(),

                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///---Searchbar----
                  TSearchContainer(
                    text: "Search in Store",
                    icon: Icons.search,
                    showBackground: true,
                    showBorder: true,
                    onTap: () {}, //todo:implement this for search function
                  ),

                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///Categories section
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          color: TCOlors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),

            ///Body
            ///Image Slider
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banner: [TImages.banner1, TImages.banner2, TImages.banner3],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  TSectionHeading(title: "Popular product",onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  TGridLayout(itemCount: 4, itemBuilder: (_ , index ) => TProductCardVertical(),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


