import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_button.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              PhloxAnimations(
                wait: const Duration(milliseconds: 200),
                duration: const Duration(milliseconds: 400),
                fromY: -30,
                fromOpacity: 0,
                child: Text(
                  TTexts.signupTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(fontSizeFactor: 0.9),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections / 1.5),

              // Form
              const PhloxAnimations(
                wait: Duration(milliseconds: 200),
                duration: Duration(milliseconds: 500),
                fromY: -30,
                fromOpacity: 0,
                child: TSignupForm(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections / 1.5),

              // Divider
              PhloxAnimations(
                  wait: const Duration(milliseconds: 200),
                  duration: const Duration(milliseconds: 600),
                  fromY: -30,
                  fromOpacity: 0,
                  child: TFormDivider(
                      dividerText: TTexts.orSignUpWith.capitalize!)),
              const SizedBox(height: TSizes.spaceBtwSections / 1.5),

              // Socialbuttons
              const PhloxAnimations(
                  wait: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 700),
                  fromY: -30,
                  fromOpacity: 0,
                  child: TSocialButtons()),
            ],
          ),
        ),
      ),
    );
  }
}
