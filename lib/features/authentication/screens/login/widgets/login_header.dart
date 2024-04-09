import 'package:fl_ecommerce/utils/constants/image_string.dart';
import 'package:fl_ecommerce/utils/constants/sizes.dart';
import 'package:fl_ecommerce/utils/constants/text_strings.dart';
import 'package:fl_ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image:
                AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
