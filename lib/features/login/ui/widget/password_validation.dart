import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialChar,
      required this.hasMinLength});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildValidationRow('At least 1 lowercase letter', hasLowerCase),
      verticalSpace(2),
      buildValidationRow('At least 1 UpperCase letter', hasUpperCase),
      verticalSpace(2),
      buildValidationRow('At least 1 special character', hasSpecialChar),
      verticalSpace(2),
      buildValidationRow('At least 1 number ', hasNumber),
      verticalSpace(2),
      buildValidationRow('At least 8 characters long', hasMinLength),
      verticalSpace(2),
    ]);
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: ColorsManager.gray,
          radius: 2.5,
        ),
        horizontalSpace(6),
        Text(text,
            style: TextStyles.font13DarkBlueRegular.copyWith(
                decoration: hasValidated ? TextDecoration.lineThrough : null,
                decorationColor: Colors.green,
                decorationThickness: 2,
                color: hasValidated
                    ? ColorsManager.gray
                    : ColorsManager.darkBlue)),
      ],
    );
  }
}
