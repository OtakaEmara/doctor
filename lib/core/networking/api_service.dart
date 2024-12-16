import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_consts.dart';
import 'package:doctor/features/login/data/models/login_request.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConsts.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String? baseUrl}) = _ApiService;

  @POST(ApiConsts.login)
  Future<LoginResponse> login(
      @Body() LoginRequest loginRequest
      );
}