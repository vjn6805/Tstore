import 'package:catlog/common/styles/spacing_styles.dart';
import 'package:catlog/features/authentication/screens/login/widgets/login_form.dart';
import 'package:catlog/features/authentication/screens/login/widgets/login_header.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/image_string.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/constants/text_strings.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo title and suubtitle
              TLoginHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwSections),
                child: TLoginForm(),
              ),
              TFormDivider(dark: dark,text: TTexts.orSignInWith,),
              SizedBox(height: TSizes.spaceBtwItems,),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}








