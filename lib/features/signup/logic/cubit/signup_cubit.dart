import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/signup/data/models/signup_request_body.dart';
import 'package:doctor_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emaiSignupState() async {
    emit(SignupState.loading());
    final response = await _signupRepo.signup(SignupRequestBody(
        name: nameController.text,
        phone: phoneController.text,
        passeordConfirmation: passwordConfirmationController.text,
        gender: 0,
        email: emailController.text,
        password: passwordController.text));
    response.when(success: (signupResponse) {
      emit(SignupState.success(signupResponse));
    }, error: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
