import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest{
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  SignUpRequest({required this.name,required this.email,required this.phone,required this.gender ,required this.password,required this.confirmPassword});

  Map<String,dynamic> toJson() => _$SignUpRequestToJson(this);
}