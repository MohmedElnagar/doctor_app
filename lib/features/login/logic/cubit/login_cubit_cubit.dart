import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/repo/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginCubitState.initial());
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitLoginState() async {
    emit(const LoginCubitState.loading());
    final response = await _loginRepo.login(ModelRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponse) {
      emit(LoginCubitState.success(loginResponse));
    }, error: (error) {
      emit(LoginCubitState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
