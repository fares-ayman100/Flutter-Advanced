import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system_design/Core/helpers/spacing.dart';
import 'package:system_design/Core/theming/styles.dart';
import 'package:system_design/Core/widgets/app_text_button.dart';
import 'package:system_design/Core/widgets/app_text_form_field.dart';
import 'package:system_design/Feature/login/ui/widget/already_have_account.dart';
import 'package:system_design/Feature/login/ui/widget/terms_and_condition_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey formkey = GlobalKey<FormState>();
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: Styles.font24BlueBold),
              verticalSpace(8),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: Styles.font14GreyRegular,
              ),
              verticalSpace(36),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    AppTextFormField(hintText: 'Email'),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: 'Password',
                      isObscureText: isObsecureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObsecureText = !isObsecureText;
                          });
                        },
                        child: Icon(
                          isObsecureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forget Password?',
                        style: Styles.font16BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: Styles.font16WhiteSemibold,
                      onpressed: () {},
                    ),
                    verticalSpace(16),
                    TermsAndConditionText(),
                    verticalSpace(60),
                    AlreadyHaveAccount(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
