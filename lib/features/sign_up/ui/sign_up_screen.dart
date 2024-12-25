import 'package:doctor/core/helpers/extension.dart';
import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/core/widgets/button.dart';
import 'package:doctor/core/widgets/login_and_sign_up_titles.dart';
import 'package:doctor/core/widgets/already_sign_up.dart';
import 'package:doctor/core/widgets/terms_and_polices.dart';
import 'package:doctor/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/ui/widgets/email_and_password.dart';
import 'package:doctor/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    var signUpCubit = context.read<SignUpCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 35.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginAndSignUpTitles(
                    title: 'Create Account',
                    body: 'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!'
                ),
                vertical(20),
                const EmailAndPassword(),
                vertical(20),
                AppButton(
                  'Create Account',
                  onPressed: () {
                    if(signUpCubit.formKey.currentState!.validate()){
                      signUpCubit.emitSignUpStates();
                    }
                  },
                ),
                vertical(40),
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: TermsAndPolices(),
                ),
                vertical(30),
                Center(child: AlreadySignUp(
                  text: 'Already have an account? ',
                  signingSituation: 'Sign In ',
                  onTap: () {
                    context.pushNamed(Routers.login);
                  },
                )),
                const SignUpBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
