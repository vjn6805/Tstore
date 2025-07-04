import 'package:catlog/features/shop/screens/home/home.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final dark=THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>controller.selectedIndex.value=index,
          
          backgroundColor: dark?TCOlors.black:Colors.white,
          indicatorColor: dark?TCOlors.white.withOpacity(0.1):TCOlors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  //TODO: Add screens in this
  final screens=[HomeScreen(),Container(color: Colors.purple,),Container(color: Colors.orange,),Container(color: Colors.blue,)];

}
