import 'package:catlog/common/widgets/login_signup/form_divider.dart';
import 'package:catlog/common/widgets/login_signup/social_button.dart';
import 'package:catlog/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:catlog/utils/constants/colors.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/constants/text_strings.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Form
              TSignUpForm(),

              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Divider
              TFormDivider(dark: dark, text: TTexts.orSignUpWith),

              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //socila buttin
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


