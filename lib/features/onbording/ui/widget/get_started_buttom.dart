import 'package:doctor_app/core/routing/extention.dart';
import 'package:doctor_app/core/routing/name_router.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButtom extends StatelessWidget {
  const GetStartedButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginPage);
        },
        style: ButtonStyle(
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 25)),
            backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Padding(
          padding: EdgeInsets.all(5.h),
          child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
        ),
      ),
    );
  }
}
