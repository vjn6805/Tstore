import 'package:catlog/common/widgets/appbar/appbar.dart';
import 'package:catlog/common/widgets/image/t_circular_image.dart';
import 'package:catlog/common/widgets/text/section_heading.dart';
import 'package:catlog/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:catlog/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(dark: THelperFunctions.isDarkMode(context), image: TImages.user,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: Text("Change Profile Icon")),
                  ],
                ),
              ),

              SizedBox(height: TSizes.spaceBtwItems/2,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              TSectionHeading(title: "Profile Information",showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),
              
              TProfileMenu(title: "Name",value: "Coding with Veer",onPressed: (){},),
              TProfileMenu(title: "Username",value: "Veer_jn6805",onPressed: (){},),

              SizedBox(height: TSizes.spaceBtwItems/2,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              TSectionHeading(title: "Personal Information",showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: "User Id",value: "682005",onPressed: (){},icon: Iconsax.copy,),
              TProfileMenu(title: "E-Mail",value: "samuraigamer1210@gmail.com",onPressed: (){},),
              TProfileMenu(title: "Phone Number",value: "7485963139",onPressed: (){},),
              TProfileMenu(title: "Gender",value: "Male",onPressed: (){},),
              TProfileMenu(title: "Date of Birth",value: "6 Aug 2005",onPressed: (){},),

              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),
              
              Center(
                child: TextButton(onPressed: (){}, child: Text("Close Account",style: TextStyle(color: Colors.red),)),
              )
              
              



            ],
          ),
        ),
      ),
    );
  }
}


