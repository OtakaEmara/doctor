import 'package:doctor/features/sign_up/data/models/sign_up_request.dart';
import 'package:doctor/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor/features/sign_up/logic/cubit/sign_up_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates>{
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpStates.signUpInitial());

  var formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void emitSignUpStates() async{
    emit(const SignUpStates.signUpLoading());
    final response = await _signUpRepo.signUp(
      SignUpRequest(
          name: nameController.text,
          phone: phoneController.text,
          confirmPassword: confirmPasswordController.text,
          gender: '0',
          email: emailController.text,
          password: passwordController.text
      )
    );

    response.when(
        success: (data) {
          emit(SignUpStates.signUpSuccess(data));
        },
        failure: (apiErrorModel) {
          emit(SignUpStates.signUpFailure(apiErrorModel));
        },
    );
  }
}