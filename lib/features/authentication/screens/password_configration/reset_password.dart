import 'package:catlog/features/authentication/screens/login/login.dart';
import 'package:catlog/utils/constants/image_string.dart';
import 'package:catlog/utils/constants/sizes.dart';
import 'package:catlog/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=> Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth()*0.6,
              ),

              SizedBox(height: TSizes.spaceBtwSections,),

              //title and subtitle
              Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwSections,),

              //buttons
              SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed:(){}, child: Text(TTexts.done)),
              ),

              SizedBox(height: TSizes.spaceBtwItems,),

              SizedBox(width: double.infinity,
                child: TextButton(onPressed:(){}, child: Text(TTexts.resendEmail)),
              ),


            ],
          ) ,
          ),

      ),
    );
  }
}
