import 'package:doctor/core/networking/api_error_model.dart';
import 'package:doctor/features/home/data/models/home_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_states.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(HomeResponse homeResponse) = HomeSuccess;
  const factory HomeState.homeError(ApiErrorModel apiErrorModel) = HomeError;
}