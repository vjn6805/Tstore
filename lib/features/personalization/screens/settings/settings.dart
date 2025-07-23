import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:catlog/common/widgets/image/t_circular_image.dart';
import 'package:catlog/common/widgets/list_tiles/setting_menu_file.dart';
import 'package:catlog/common/widgets/text/section_heading.dart';
import 'package:catlog/features/personalization/screens/profile/profile.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TCOlors.white),
                    ),
                  ),
                  TUserProfileTile(onTap: ()=>Get.to(()=>ProfileScreen()),),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: "Account Settings",showActionButton: false,),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subtitle: "Set shopping delivery address",
                    onTap: (){},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add, remove products and move to checkout",
                    onTap: (){},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In-Progress and Completed Order",
                    onTap: (){},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subtitle: "Withdraw balance to registered bank account",
                    onTap: (){},
                  ),
                  TSettingMenuTitle(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons'),
                  TSettingMenuTitle(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message'),
                  TSettingMenuTitle(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts'),

                  /// -- App Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTitle(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to your Cloud Firebase'),
                  TSettingMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on Location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  TSettingMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  TSettingMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text("Logout")),
                  ),


                  SizedBox(height: TSizes.spaceBtwSections*2.5),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
