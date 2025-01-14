import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/networking/api_error_model.dart';
import 'package:doctor/features/home/ui/widgets/speciality_and_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_states.dart';
import 'doctor_list_view.dart';

class SpecialityAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecialityAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) => current is HomeLoading || current is HomeSuccess || current is HomeError,
      builder: (context, state) {
        return state.maybeWhen(
          homeLoading: () {
            return const Center(child: CircularProgressIndicator());
          },
          homeSuccess: (homeResponse) {
            return Expanded(
              child: Column(
                children: [
                  SpecialityAndListView(specialityData: homeResponse.data,),
                  vertical(8),
                  DoctorListView(doctorListData: homeResponse.data[0].doctors,)
                ],
              ),
            );
          },
          homeError: (apiErrorModel) {
            return Text(ApiErrorModel().getAllErrors());
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
