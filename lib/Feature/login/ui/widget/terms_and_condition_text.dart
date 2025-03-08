import 'package:flutter/material.dart';
import 'package:system_design/Core/theming/styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: Styles.font13GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            style: Styles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: 'and',
            style: Styles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(text: ' Privacy Policy', style: Styles.font14DarkBlueMedium),
        ],
      ),
    );
  }
}
