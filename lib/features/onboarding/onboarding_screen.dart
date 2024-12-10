import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/widgets/button.dart';
import 'package:doctor/features/onboarding/widgets/doctor_logo_opacity.dart';
import 'package:doctor/features/onboarding/widgets/logo_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h
            ),
            child: Column(
              children: [
                LogoName(),
                SizedBox(height : 50.h,),
                DoctorLogoOpacity(),
                Padding(
                  padding: EdgeInsets.only(left: 40.h,right: 20.h),
                  child: Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font14grey400weight,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.h,),
                AppButton('Get Started')
              ],
            ),
          ),
        ),
      )
    );
  }
}
