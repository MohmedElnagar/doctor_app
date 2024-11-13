import 'package:doctor_app/core/routing/extention.dart';
import 'package:doctor_app/core/routing/name_router.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:doctor_app/features/login/ui/widget/login_bloc_listener.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(Routes.signup),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\' have an account? ',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.signup);
                },
              text: 'Sign Up',
              style: TextStyles.font13BlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
