import 'package:doctor/features/home/data/models/home_response.dart';
import 'package:doctor/features/home/logic/cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/home_repo.dart';

class HomeCubit extends Cubit<HomeState>{
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void emitHomeState() async{
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.homeDataRepo();

    response.when(
      success: (data) {

      },
      failure: (apiErrorModel) {

      },
    );
  }
}