import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_cubit_state.freezed.dart';

@freezed
class LoginCubitState<T> with _$LoginCubitState<T> {
  const factory LoginCubitState.initial() = Initial;
  const factory LoginCubitState.loading() = Loading;
  const factory LoginCubitState.success(T data) = Success<T>;
  const factory LoginCubitState.error({required String error}) = Error;
}
