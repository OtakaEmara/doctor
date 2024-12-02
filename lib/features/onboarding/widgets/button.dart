import 'package:doctor/core/helpers/extension.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      height: 52.h,
      minWidth: 311.w,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      onPressed: () {
        context.pushNamed(Routers.login);
      },
      child: Text('Get Started',style: TextStyles.font16white600weight,),
    );
  }
}
