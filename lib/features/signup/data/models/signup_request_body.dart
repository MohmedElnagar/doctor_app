import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String email;
  final String password;
  final String name;
  final String phone;
  @JsonKey(name: 'password_confirmation')
  final String passeordConfirmation;
  final int gender;
  SignupRequestBody(
      {required this.name,required this.phone,required this.passeordConfirmation,required this.gender,
      required this.email, required this.password});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
