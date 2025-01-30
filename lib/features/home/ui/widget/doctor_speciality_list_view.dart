import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child:
                        SvgPicture.asset("assets/svgs/general_speciality.svg"),
                  ),
                  verticalSpace(8),
                  Text(
                    "speciality",
                    style: TextStyles.font12DarkBlueRegular,
                  )
                ],
              ),
            );
          }),
    );
  }
}
