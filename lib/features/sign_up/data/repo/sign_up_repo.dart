import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_results.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/sign_up/data/models/sign_up_request.dart';
import 'package:doctor/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo{
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResults<SignUpResponse>> signUp(SignUpRequest signUpRequest)async{
    try{
      final response = await _apiService.signUp(signUpRequest);
      return ApiResults.success(response);
    }catch(error){
      return ApiResults.failure(ApiErrorHandler.handle(error));
    }
  }
}