import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi,Mohamed",
              style: TextStyles.font18DarkBlueBold,
            ),
            SizedBox(height: 8.h),
            Text(
              "How Are You Today? ",
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
            radius: 24,
            backgroundColor: ColorsManager.moreLighterGray,
            child: SvgPicture.asset('assets/svgs/notifications.svg'))
      ],
    );
  }
}
