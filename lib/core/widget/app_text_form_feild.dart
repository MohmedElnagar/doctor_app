import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTxtFormField extends StatelessWidget {
  const AppTxtFormField({
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.inputTextStyle,
    required this.hintText,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    this.fillColor,
    this.suffixIconColor,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? suffixIconColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? ColorsManager.moreLightGray,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? ColorsManager.mainBlue,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                    width: 1.3, color: ColorsManager.lighterGray)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                    width: 1.3, color: ColorsManager.mainBlue)),
      ),
    );
  }
}
