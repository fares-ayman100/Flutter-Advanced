import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system_design/Core/theming/colors.dart';
import 'package:system_design/Core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final TextStyle? inputTextStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusBorder;
  final bool? isObscureText;
  final Color? backgroudColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.suffixIcon,
    this.isObscureText,
    this.enabledBorder,
    this.focusBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.backgroudColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 20.w, horizontal: 18.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.klighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder:
            focusBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.kprimaryColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? Styles.font14LightGreyRegular,
        suffixIcon: suffixIcon,
        fillColor: backgroudColor ?? ColorManager.kmoreLightGrey,
        filled: true,
      ),

      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? Styles.font14DarkBlueMedium,
    );
  }
}
