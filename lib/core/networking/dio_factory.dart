import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{

  DioFactory._();
  
  static Dio? dio;

  static getDio(){
    Duration timeOut = const Duration(seconds: 30);

    if(dio == null){
      dio = Dio()..options.receiveTimeout = timeOut..options.connectTimeout = timeOut;
      dioIntercept();
      return dio;
    }else{
      return dio;
    }
  }

  static dioIntercept(){
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true
      )
    );
  }
}