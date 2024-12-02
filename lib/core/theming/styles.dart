import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class TextStyles{

  static TextStyle font24black700weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700
  );

  static TextStyle font32blueBold = TextStyle(
      fontSize: 32.sp,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.bold,
  );

  static TextStyle font12grey400weight = TextStyle(
    fontSize: 14.sp,
    color: AppColors.grey,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font16white600weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}