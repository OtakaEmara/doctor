import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_consts.dart';
import 'package:doctor/features/login/data/models/login_request.dart';
import 'package:doctor/features/sign_up/data/models/sign_up_request.dart';
import 'package:doctor/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/home/data/models/home_response.dart';
import '../../features/login/data/models/login_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConsts.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String? baseUrl}) = _ApiService;

  @POST(ApiConsts.login)
  Future<LoginResponse> login(
      @Body() LoginRequest loginRequest
      );

  @POST(ApiConsts.signUp)
  Future<SignUpResponse> signUp(
      @Body() SignUpRequest signUpRequest
      );
  
  @GET(ApiConsts.home)
  Future<HomeResponse> home();
}