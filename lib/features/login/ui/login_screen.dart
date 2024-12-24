import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/widgets/button.dart';
import 'package:doctor/core/widgets/text_form_field.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/ui/widgets/already_sign_up.dart';
import 'package:doctor/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor/features/login/ui/widgets/remember_and_forget_password.dart';
import 'package:doctor/features/login/ui/widgets/terms_and_polices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/login_request.dart';

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
                Text('Welcome Back',style: TextStyles.font24blue700weight,),
                vertical(10),
                Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',style: TextStyles.font14grey400weight.copyWith(
                  height: 1.8.h
                ),),
                vertical(40),
                EmailAndPassword(),
                vertical(30),
                AppButton(
                  'Login',
                  onPressed: () {
                    if(loginCubit.formKey.currentState!.validate()){
                      loginCubit.emitLoginStates(
                          LoginRequest(
                              email: loginCubit.emailController.text,
                              password: loginCubit.passwordController.text
                          )
                      );
                    }
                  },
                ),
                vertical(40),
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: TermsAndPolices(),
                ),
                vertical(30),
                Center(child: AlreadySignUp()),
                LoginBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
