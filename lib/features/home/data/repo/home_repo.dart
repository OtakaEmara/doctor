import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_error_model.dart';
import 'package:doctor/core/networking/api_results.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/home/data/models/home_response.dart';

class HomeRepo{
  final ApiService _apiService;
  HomeRepo(this._apiService);

  Future<ApiResults<HomeResponse>> homeDataRepo()async{
    try{
      final response = await _apiService.home();
      return ApiResults.success(response);
    }catch(error){
      return ApiResults.failure(ApiErrorHandler.handle(error));
    }
  }
}