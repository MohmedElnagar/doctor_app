import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:doctor_app/core/widget/app_text_buttom.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit_cubit.dart';
import 'package:doctor_app/features/login/ui/widget/dont_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widget/email_and_password.dart';
import 'package:doctor_app/features/login/ui/widget/login_bloc_listener.dart';
import 'package:doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back", style: TextStyles.font24BlueBold),
            verticalSpace(8),
            Text(
                "we're excited to have you back. cant't wait to see what you've been up tp since you last logged in. ",
                style: TextStyles.font14GrayRegular),
            verticalSpace(36),
            Column(children: [
              EmailAndPassword(),
              verticalSpace(24),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "Forgot Password?",
                  style: TextStyles.font13BlueRegular,
                ),
              ),
              verticalSpace(40),
              AppTextButtom(
                text: 'Login',
                onPressed: () {
                  validateThenDoLogin(context);
                },
                style: TextStyles.font16WhiteSemiBold,
              ),
              verticalSpace(16),
              const TermsAndConditionsText(),
              verticalSpace(60),
              const DontHaveAccountText(),
              LoginBlocListener()
            ]),
          ],
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
