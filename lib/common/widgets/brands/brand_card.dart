import 'package:fl_ecommerce/common/widgets/images/t_rounded_container.dart';
import 'package:fl_ecommerce/features/shop/screens/store/widgets/t_brand_card.dart';
import 'package:fl_ecommerce/utils/constants/colors.dart';
import 'package:fl_ecommerce/utils/constants/image_string.dart';
import 'package:fl_ecommerce/utils/constants/sizes.dart';
import 'package:fl_ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Products Count
          const TBrandCard(
            showBorder: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          // Brand top 3 product images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      borderColor: TColors.darkGrey,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}
