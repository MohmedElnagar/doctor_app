import 'package:doctor_app/core/routing/extention.dart';
import 'package:doctor_app/core/routing/name_router.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginPage);
              },
            text: 'Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
