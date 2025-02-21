import 'dart:async';
import 'package:dio/dio.dart';
import 'package:doctor_app/core/network/api_constans.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';
import 'package:doctor_app/features/signup/data/models/signup_request_body.dart';
import 'package:doctor_app/features/signup/data/models/signup_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstans.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstans.login)
  Future<LoginResponse> login(
    @Body() ModelRequestBody loginRequestBody,
  );
  @POST(ApiConstans.signUp)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
  @GET(ApiConstans.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}
