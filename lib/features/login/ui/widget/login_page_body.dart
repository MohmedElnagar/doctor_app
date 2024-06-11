import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:doctor_app/core/widget/app_text_buttom.dart';
import 'package:doctor_app/core/widget/app_text_form_feild.dart';
import 'package:doctor_app/features/login/ui/widget/already_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  GlobalKey formKey = GlobalKey<FormState>();
  bool isObscureText = true;
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
            Form(
                key: formKey,
                child: Column(children: [
                  const AppTxtFormField(
                    hintText: 'Email',
                  ),
                  verticalSpace(18),
                  AppTxtFormField(
                    hintText: 'Password',
                    isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility)),
                  ),
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
                    onPressed: () {},
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const AlreadyHaveAccountText(),
                ])),
          ],
        ),
      ),
    );
  }
}
