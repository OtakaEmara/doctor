import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse{
  String? message;
  Data? data;
  bool? status;
  int? code;

  SignUpResponse({required this.message,required this.data,required this.status,required this.code});

  factory SignUpResponse.fromJson(Map<String,dynamic> json) => _$SignUpResponseFromJson(json);

}

@JsonSerializable()
class Data{
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  Data({required this.token,required this.userName});

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);
}