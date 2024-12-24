import 'package:doctor/core/helpers/app_regex.dart';
import 'package:doctor/features/login/data/models/login_request.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/ui/widgets/remember_and_forget_password.dart';
import 'package:doctor/features/login/ui/widgets/setup_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/button.dart';
import '../../../../core/widgets/text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool focused = false;
  bool secureText = true;
  bool checkBox = false;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    },);
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(
            'Email',
            controller: loginCubit.emailController,
            validator: (p0) {
              if(p0 == null || p0.isEmpty || !AppRegex.isEmailValid(p0)){
                return 'Please enter a valid email';
              }
              return null;
            },
            onTap: (){
              setState(() {
                focused = false;
              });
            },
          ),
          vertical(20),
          AppTextFormField(
            'Password',
            controller: passwordController,
            validator: (p0) {
              if(p0 == null || p0.isEmpty || !AppRegex.isPasswordValid(p0)){
                return 'Please enter a valid password';
              }
              return null;
            },
            onTap: (){
              setState(() {
                focused = true;
              });
            },
            obscureText: secureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  secureText = !secureText;
                });
              },
              icon: secureText ? Icon(Icons.visibility_off_outlined,
                color: focused ? AppColors.grey : AppColors.lightGrey,
                size: 23.sp,) :
              Icon(Icons.visibility_outlined,
                  color: focused ? AppColors.grey : AppColors.lightGrey,
                  size: 23.sp),
            ),
          ),
          vertical(20),
          RememberAndForgetPassword(
            value: checkBox,
            onChanged: (p0) {
              setState(() {
                checkBox = !checkBox;
              });
            },
          ),
          vertical(20),
          SetupPassword(
            hasLowercase: hasLowercase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasUppercase: hasUppercase,
          ),
        ],
      ),
    );
  }
}
