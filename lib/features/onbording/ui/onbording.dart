import 'package:doctor_app/features/onbording/ui/sub_text.dart';
import 'package:doctor_app/features/onbording/ui/widget/doc_logo_and_name.dart';
import 'package:doctor_app/features/onbording/ui/widget/doctor_image_and_text.dart';
import 'package:doctor_app/features/onbording/ui/widget/get_started_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            const DoctorImageAndText(),
            const SubText(),
            SizedBox(
              height: 40.h,
            ),
            const GetStartedButtom()
          ],
        ),
      ),
    )));
  }
}
