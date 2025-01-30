import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      "",
                      width: 110.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  horizontalSpace(16.w),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        "data",
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        "data",
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        "data",
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ))
                ],
              ),
            );
          }),
    );
  }
}
