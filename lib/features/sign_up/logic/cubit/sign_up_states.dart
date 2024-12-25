import 'package:doctor/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_states.freezed.dart';

@freezed
class SignUpStates<T> with _$SignUpStates<T>{
  const factory SignUpStates.signUpInitial() = _Initial;
  const factory SignUpStates.signUpLoading() = Loading;
  const factory SignUpStates.signUpSuccess(T data) = Success<T>;
  const factory SignUpStates.signUpFailure(ApiErrorModel apiErrorModel) = Failure<T>;
}
