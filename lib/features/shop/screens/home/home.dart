import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections / 1.5),

                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.defaultSpace),
                    child: Container(
                      width: TDeviceUtils.getScreenWidth(context),
                      padding: const EdgeInsets.all(TSizes.md),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            BorderRadius.circular(TSizes.cardRadiusLg),
                        border: Border.all(color: TColors.grey),
                      ),
                      child: Row(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
