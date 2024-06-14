import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/repo/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;

  LoginCubitCubit(this._loginRepo) : super(const LoginCubitState.initial());
  void emitLoginState(ModelRequestBody model) async {
    emit(const LoginCubitState.loading());
    final response = await _loginRepo.login(model);
    response.when(success: (loginResponse) {
      emit(LoginCubitState.success(loginResponse));
    }, error: (error) {
      emit(LoginCubitState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
