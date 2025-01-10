
import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_error_model.dart';
import 'package:doctor/features/home/data/models/home_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_states.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(List<Data?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ApiErrorHandler apiErrorHandler) = SpecializationsError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ApiErrorHandler apiErrorHandler) = DoctorsError;
}