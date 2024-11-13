import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:doctor_app/core/widget/app_text_buttom.dart';
import 'package:doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:doctor_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:doctor_app/features/signup/ui/widget/already_have_account.dart';
import 'package:doctor_app/features/signup/ui/widget/signup_bloc_lisnter.dart';
import 'package:doctor_app/features/signup/ui/widget/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(36),
            Column(
              children: [
                const SignupForm(),
                verticalSpace(40),
                AppTextButtom(
                  text: "Create Account",
                  style: TextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenDoSignup(context);
                  },
                ),
                verticalSpace(16),
                const TermsAndConditionsText(),
                verticalSpace(30),
                const AlreadyHaveAccountText(),
                const SignupBlocListener(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emaiSignupState();
    }
  }
}
