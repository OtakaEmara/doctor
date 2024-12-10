import 'package:doctor/core/helpers/extension.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppButton extends StatelessWidget {

  String? text;
  AppButton(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      height: 52.h,
      minWidth: 327.w,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      onPressed: () {
        context.pushNamed(Routers.login);
      },
      child: Text(text!,style: TextStyles.font16white600weight,),
    );
  }
}
