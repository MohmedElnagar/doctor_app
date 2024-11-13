import 'package:doctor_app/features/signup/ui/widget/signup_body.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SignupBody()),
    );
  }
}
