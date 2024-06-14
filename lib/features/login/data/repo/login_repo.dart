import 'package:doctor_app/core/network/api_error_handler.dart';
import 'package:doctor_app/core/network/api_result.dart';
import 'package:doctor_app/core/network/api_service.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo({required ApiService apiService}) : _apiService = apiService;
  Future<ApiResult<LoginResponse>> login(ModelRequestBody model) async {
    try {
      final response = await _apiService.login(model);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e));
    }
  }
}
