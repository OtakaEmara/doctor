import 'package:doctor/features/login/data/models/login_request.dart';
import 'package:doctor/features/login/logic/cubit/login_states.dart';
import 'package:bloc/bloc.dart';

import '../../data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginStates>{
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginStates.loginInitial());

  void emitLoginStates(LoginRequest loginRequest) async{
    emit(const LoginStates.loginLoading());
    final response = await _loginRepo.login(loginRequest);

    response.when(
        success: (data) {
          emit(LoginStates.loginSuccess(data));
        },
        failure: (apiErrorModel) {
          emit(LoginStates.loginFailure(apiErrorModel));
        },
    );
  }
}