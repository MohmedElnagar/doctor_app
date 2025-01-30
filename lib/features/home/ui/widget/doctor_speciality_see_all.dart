import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font18DarkBlueBold,
        ),
        Spacer(),
        Text(
          "SeeAll",
          style: TextStyles.font13BlueRegular,
        ),
      ],
    );
  }
}
