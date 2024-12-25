import 'package:doctor/core/helpers/extension.dart';
import 'package:doctor/core/networking/api_error_model.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/logic/cubit/sign_up_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/styles.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit,SignUpStates>(
      listenWhen: (previous, current) => current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          signUpLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            );
          },
          signUpSuccess: (signUpResponse) {
            context.pop();
            context.pushNamed(Routers.home);
          },
          signUpFailure: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  ApiErrorModel().getAllErrors(),
                  style: TextStyles.font15DarkBlue500weight,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      'Got it',
                      style: TextStyles.font14blue400weight,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
