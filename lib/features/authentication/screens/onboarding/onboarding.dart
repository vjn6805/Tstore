import 'package:catlog/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:catlog/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:catlog/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:catlog/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/image_string.dart';
import 'package:catlog/utils/constants/text_strings.dart';
import 'package:catlog/utils/device/device_utilities.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/sizes.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
        body:
          Stack(
                children: <Widget>[
          //horizontal scrollable pages
          PageView(
            controller: controller.pagecontroller,  //which page is currently visible to get that
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip button
          OnBoardingSkip(),
          //smooth page indicator
          OnBoardingDotNavigation(),
          //circular button
          OnBoardingNextButton()
                ],
              ),
        );
  }
}


