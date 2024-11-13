import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButtom extends StatelessWidget {
  const AppTextButtom(
      {super.key,
      this.onPressed,
      this.horizontalPadding,
      this.verticalPadding,
      this.backgroundcolor,
      this.buttomwidth,
      this.buttomheight,
      required this.text,
      this.style,
      this.borderRadius});
  final void Function()? onPressed;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundcolor;
  final double? buttomwidth;
  final double? buttomheight;
  final String text;
  final TextStyle? style;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            vertical: verticalPadding?.h ?? 14.w,
            horizontal: horizontalPadding?.w ?? 12.h)),
        backgroundColor:
            WidgetStateProperty.all(backgroundcolor ?? ColorsManager.mainBlue),
        fixedSize: WidgetStateProperty.all(
            Size(buttomwidth?.w ?? double.maxFinite, buttomheight?.h ?? 50.h)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16))),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
