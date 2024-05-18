import 'package:fl_ecommerce/utils/constants/colors.dart';
import 'package:fl_ecommerce/utils/constants/sizes.dart';
import 'package:fl_ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  // A custom Circular Icon widget with a background color.
  //
  // Properties are:
  // Container [width], [height], & [onPressed].
  //
  // Icon's [size], [color] & [onPressed]

  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
