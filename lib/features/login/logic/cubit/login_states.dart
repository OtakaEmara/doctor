import 'package:doctor/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_states.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates<T>{
  const factory LoginStates.loginInitial() = _Initial;
  const factory LoginStates.loginLoading() = Loading;
  const factory LoginStates.loginSuccess(T data) = Success<T>;
  const factory LoginStates.loginFailure(ApiErrorModel apiErrorModel) = Failure<T>;
}
