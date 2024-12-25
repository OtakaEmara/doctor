import 'package:doctor/core/helpers/extension.dart';
import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/widgets/button.dart';
import 'package:doctor/core/widgets/login_and_sign_up_titles.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/core/widgets/already_sign_up.dart';
import 'package:doctor/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor/core/widgets/terms_and_polices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routers.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    var loginCubit = context.read<LoginCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 35.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginAndSignUpTitles(
                    title: 'Welcome Back',
                    body: 'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.'
                ),
                vertical(40),
                EmailAndPassword(),
                vertical(30),
                AppButton(
                  'Login',
                  onPressed: () {
                    if(loginCubit.formKey.currentState!.validate()){
                      loginCubit.emitLoginStates();
                    }
                  },
                ),
                vertical(30),
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: TermsAndPolices(),
                ),
                vertical(15),
                AlreadySignUp(
                  text: 'Don\'t have an account? ',
                  signingSituation: 'Sign Up ',
                  onTap: () {
                    context.pushNamed(Routers.signUp);
                  },
                ),
                LoginBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
