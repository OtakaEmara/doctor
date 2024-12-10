import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/widgets/button.dart';
import 'package:doctor/core/widgets/text_form_field.dart';
import 'package:doctor/features/login/widgets/already_sign_up.dart';
import 'package:doctor/features/login/widgets/remember_and_forget_password.dart';
import 'package:doctor/features/login/widgets/terms_and_polices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  bool focused = false;
  bool secureText = true;
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
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
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextFormField('Email',
                          onTap: (){
                            setState(() {
                              focused = false;
                            });
                          },
                        ),
                        vertical(20),
                        AppTextFormField(
                          'Password',
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
                        )
                      ],
                    ),
                ),
                vertical(30),
                AppButton('Login'),
                vertical(40),
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: TermsAndPolices(),
                ),
                vertical(30),
                Center(child: AlreadySignUp())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
