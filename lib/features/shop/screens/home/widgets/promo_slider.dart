import 'package:carousel_slider/carousel_slider.dart';
import 'package:catlog/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/image/t_round_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banner.map((url)=>TRoundedImage(imageUrl:url)).toList(),
          options: CarouselOptions(
            padEnds: true,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index,_)=>controller.updatePageIndicator(index)
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banner.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundcolor: controller.carouselCurrentIndex.value==i?TCOlors.primary:TCOlors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}