import 'package:fl_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fl_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fl_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:fl_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fl_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fl_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:fl_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:fl_ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:fl_ecommerce/utils/constants/image_string.dart';
import 'package:fl_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const TPrimaryHeaderContainer(
            child: Column(
              children: [
                // Appbar
                THomeAppBar(),

                // Searchbar
                TSearchContainer(
                  text: 'Search in Store',
                ),

                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // Categories
                Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        // Categories
                        THomeCategories()
                      ],
                    ))
              ],
            ),
          ),

          // Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Promo Slider
                const TPromoSlider(
                  banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                    TImages.promoBanner4,
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // Popular Products
                TGridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
