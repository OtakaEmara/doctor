import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{

  DioFactory._();
  
  static Dio? dio;

  static getDio(){
    Duration timeOut = const Duration(seconds: 30);

    if(dio == null){
      dio = Dio()..options.receiveTimeout = timeOut..options.connectTimeout = timeOut;
      dioHeaders();
      dioIntercept();
      return dio;
    }else{
      return dio;
    }
  }

  static dioHeaders(){
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzM2ODUyMTAwLCJleHAiOjE3MzY5Mzg1MDAsIm5iZiI6MTczNjg1MjEwMCwianRpIjoibXRwQThZY0swcmxXNnhMeCIsInN1YiI6IjI5OTIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.J-8cO-8nukUoRcjkz0gwnC0p7XSEL_hJMT4661S20GI'
    };
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