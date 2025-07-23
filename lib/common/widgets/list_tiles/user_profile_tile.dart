import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../image/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        dark: THelperFunctions.isDarkMode(context),
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Veer Jain",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TCOlors.white),),
      subtitle:Text("veer47003@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: TCOlors.white),),
      trailing: IconButton(onPressed: onTap, icon: Icon(Iconsax.edit,color: TCOlors.white,)),
    );
  }
}