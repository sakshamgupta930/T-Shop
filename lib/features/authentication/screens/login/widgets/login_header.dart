import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhloxAnimations(
          wait: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 500),
          fromY: -30,
          fromOpacity: 0,
          child: Image(
            height: 150,
            image:
                AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
          ),
        ),
        PhloxAnimations(
          wait: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 600),
          fromY: -30,
          fromOpacity: 0,
          child: Text(
            TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: TSizes.sm),
        PhloxAnimations(
          wait: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 700),
          fromY: -30,
          fromOpacity: 0,
          child: Text(
            TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
