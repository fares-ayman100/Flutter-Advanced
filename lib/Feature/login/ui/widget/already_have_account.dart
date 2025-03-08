import 'package:flutter/material.dart';
import 'package:system_design/Core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already Have an Account ? ',
            style: Styles.font18DarkBlueMedium,
          ),
          TextSpan(text: ' Login', style: Styles.font24BlueBold),
        ],
      ),
    );
  }
}
