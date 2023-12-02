import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/common/widgets/login_signup/social_button.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              const TLoginHeader(),

              // Form
              const PhloxAnimations(
                wait: Duration(milliseconds: 500),
                duration: Duration(milliseconds: 900),
                fromY: -30,
                fromOpacity: 0,
                child: TLoginForm(),
              ),

              // Divider
              PhloxAnimations(
                  wait: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 1000),
                  fromY: -30,
                  fromOpacity: 0,
                  child: TFormDivider(
                      dividerText: TTexts.orSignInWith.capitalize!)),

              const SizedBox(height: TSizes.spaceBtwSections / 2),
              // Social Buttons
              const PhloxAnimations(
                wait: Duration(milliseconds: 500),
                duration: Duration(milliseconds: 1200),
                fromY: -30,
                fromOpacity: 0,
                child: TSocialButtons(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
