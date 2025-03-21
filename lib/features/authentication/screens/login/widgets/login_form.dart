import 'package:catlog/features/authentication/screens/password_configration/forget_password.dart';
import 'package:catlog/features/authentication/screens/signup/signup.dart';
import 'package:catlog/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                  onPressed: () =>Get.to(()=>ForgetPassword()),
                  child: Text(TTexts.forgetPassword))
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () =>Get.to(()=>NavigationMenu()), child: Text(TTexts.signIn)),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () =>Get.to(()=> SignUpScreen()),
                child: Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}