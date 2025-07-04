import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/custom_shapes/curved_shapes/curved_edges.dart';
import 'package:catlog/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/enums.dart';
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
import '../../../../common/widgets/product_cart/cart_menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// ---Appbar custom (name and cart icon)---
                  THomeAppBar(),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                  ///Searchbar
                  TSearchContainer(text: "Search in Store", icon: Icons.search, showBackground: true, showBorder: true),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                  ///Categories section

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






