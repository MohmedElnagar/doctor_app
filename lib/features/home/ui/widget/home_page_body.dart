import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_blue_contaner.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_list_view.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_speciality_list_view.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widget/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTopBar(),
          DoctorBlueContaner(),
          verticalSpace(24.h),
          DoctorSpecialitySeeAll(),
          verticalSpace(18.h),
          DoctorSpecialityListView(),
          verticalSpace(8.h),
          DoctorListView(),
        ],
      ),
    );
  }
}
