import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/icons/t_circular_icon.dart';
import 'package:catlog/common/widgets/layouts/grid_layout.dart';
import 'package:catlog/common/widgets/product/product_cart/produxt_cart_vertical.dart';
import 'package:catlog/features/shop/screens/home/home.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          TCircularIcons(
            icon: Iconsax.add,
            dark: THelperFunctions.isDarkMode(context),
            onPressed: () => Get.to(HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
