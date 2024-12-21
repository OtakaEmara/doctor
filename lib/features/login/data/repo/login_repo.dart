import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_error_model.dart';
import 'package:doctor/core/networking/api_results.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/login/data/models/login_request.dart';
import 'package:doctor/features/login/data/models/login_response.dart';

class LoginRepo{
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResults<LoginResponse>> login(LoginRequest loginRequest)async{
    try{
      final response = await _apiService.login(loginRequest);
      return ApiResults.success(response);
    }catch(error){
      return ApiResults.failure(ApiErrorHandler.handle(error));
    }
  }
}