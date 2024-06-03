import 'package:fl_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:fl_ecommerce/utils/constants/colors.dart';
import 'package:fl_ecommerce/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
        isCircular: true,
      ),
      title: Text('Coding with T',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: TColors.white)),
      subtitle: Text(
        'support@codingwithT.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
    );
  }
}
