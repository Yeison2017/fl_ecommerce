import 'package:fl_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:fl_ecommerce/common/widgets/images/t_rounded_container.dart';
import 'package:fl_ecommerce/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:fl_ecommerce/utils/constants/colors.dart';
import 'package:fl_ecommerce/utils/constants/enums.dart';
import 'package:fl_ecommerce/utils/constants/image_string.dart';
import 'package:fl_ecommerce/utils/constants/sizes.dart';
import 'package:fl_ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(children: [
          // Icon
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.clothIcon,
              backgroundColor: Colors.transparent,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),

          // Text
          // [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vertical center and alse
          // to keep text inside the boundaries
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TBrandTitleWithVerifiedIcon(
                  title: 'Nike',
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '256 products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
