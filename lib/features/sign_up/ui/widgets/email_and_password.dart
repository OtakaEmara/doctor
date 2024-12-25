import 'package:doctor/core/helpers/app_regex.dart';
import 'package:doctor/features/login/ui/widgets/setup_password.dart';
import 'package:doctor/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool focused = false;
  bool secureTextPassword = true;
  bool secureTextConfirmPassword = true;
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
    passwordController = context.read<SignUpCubit>().passwordController;
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
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var signCubit = context.read<SignUpCubit>();
    return Form(
      key: signCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(
            'Name',
            controller: signCubit.nameController,
            validator: (p0) {
              if(p0 == null || p0.isEmpty){
                return 'Please enter a valid Name';
              }
              return null;
            },
            onTap: (){
              setState(() {
                focused = false;
              });
            },
          ),
          vertical(15),
          AppTextFormField(
            'Email',
            controller: signCubit.emailController,
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
          vertical(15),
          AppTextFormField(
            'Phone',
            controller: signCubit.phoneController,
            validator: (p0) {
              if(p0 == null || p0.isEmpty || !AppRegex.isPhoneNumberValid(p0)){
                return 'Please enter a valid phone';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            onTap: (){
              setState(() {
                focused = false;
              });
            },
          ),
          vertical(15),
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
            obscureText: secureTextPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  secureTextPassword = !secureTextPassword;
                });
              },
              icon: secureTextPassword ? Icon(Icons.visibility_off_outlined,
                color: focused ? AppColors.grey : AppColors.lightGrey,
                size: 23.sp,) :
              Icon(Icons.visibility_outlined,
                  color: focused ? AppColors.grey : AppColors.lightGrey,
                  size: 23.sp),
            ),
          ),
          vertical(15),
          AppTextFormField(
            'Confirm Password',
            controller: signCubit.confirmPasswordController,
            validator: (p0) {
              if(p0 == null || p0.isEmpty || !AppRegex.isPasswordValid(p0) || p0 != passwordController.text){
                return 'Please enter a valid password';
              }
              return null;
            },
            onTap: (){
              setState(() {
                focused = true;
              });
            },
            obscureText: secureTextConfirmPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  secureTextConfirmPassword = !secureTextConfirmPassword;
                });
              },
              icon: secureTextConfirmPassword ? Icon(Icons.visibility_off_outlined,
                color: focused ? AppColors.grey : AppColors.lightGrey,
                size: 23.sp,) :
              Icon(Icons.visibility_outlined,
                  color: focused ? AppColors.grey : AppColors.lightGrey,
                  size: 23.sp),
            ),
          ),
          vertical(15),
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
