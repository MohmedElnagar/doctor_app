import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubText extends StatelessWidget {
  const SubText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Text(
        'MangerMangerMangerMangerMangerMangerMangerMangerMangerManger',
        textAlign: TextAlign.center,
        style: TextStyles.font13GrayRegular,
      ),
    );
  }
}
