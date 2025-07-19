import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:catlog/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:catlog/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:catlog/common/widgets/text/section_heading.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/image/t_circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          TCartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TCOlors.black : TCOlors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      TSectionHeading(
                        title: "Featured Brands",
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TRoundedContainer(
                        padding: EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            TCircularImage(
                              dark: dark,
                              image: TImages.clothIcon,
                              isNetworkImage: false,
                              backgroundColor: Colors.transparent,
                              overlayColor: dark ? TCOlors.white : TCOlors.black,
                            ),
                            SizedBox(height: TSizes.spaceBtwItems/2,),
                            Column(
                              children: [

                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
