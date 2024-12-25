import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {

  TextEditingController? controller;
  Function()? onTap;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool? obscureText;
  EdgeInsets? contentPadding;
  InputBorder? outlinedBorderEnabledBorder;
  InputBorder? outlinedBorderFocusedBorder;
  InputBorder? outlinedBorderErrorBorder;
  InputBorder? outlinedBorderFocusedErrorBorder;
  late String hintText;
  TextStyle? hintTextStyle;
  Color? backgroundColor;
  Widget? suffixIcon;

  AppTextFormField(this.hintText,{super.key,required this.controller,required this.validator,
    this.keyboardType,this.onTap,this.obscureText,this.contentPadding,this.outlinedBorderEnabledBorder,
    this.outlinedBorderFocusedBorder, this.hintTextStyle,this.backgroundColor,this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       controller: controller,
       onTap: onTap,
       validator: validator,
       keyboardType: keyboardType??TextInputType.text,
       obscureText: obscureText ?? false,
       decoration: InputDecoration(
         isDense: true,
         contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 17.h,horizontal: 20.w),
         enabledBorder: outlinedBorderEnabledBorder ?? OutlineInputBorder(
           borderRadius: BorderRadius.circular(16.h),
           borderSide: const BorderSide(
             color: AppColors.lighterGrey,
             width: 1
           )
         ),
         focusedBorder: outlinedBorderErrorBorder ?? OutlineInputBorder(
             borderRadius: BorderRadius.circular(16.h),
             borderSide: const BorderSide(
                 color: AppColors.primaryColor,
                 width: 1
             )
         ),
         errorBorder: outlinedBorderFocusedErrorBorder ?? OutlineInputBorder(
             borderRadius: BorderRadius.circular(16.h),
             borderSide: const BorderSide(
                 color: Colors.red,
                 width: 1
             )
         ),
         focusedErrorBorder: outlinedBorderFocusedErrorBorder ?? OutlineInputBorder(
             borderRadius: BorderRadius.circular(16.h),
             borderSide: const BorderSide(
                 color: Colors.red,
                 width: 1
             )
         ),
         hintText: hintText,
         hintStyle: hintTextStyle ?? TextStyles.font15LightGrey500weight,
         filled: true,
         fillColor: backgroundColor ?? AppColors.moreLighterGrey,
         suffixIcon: suffixIcon
       ),
    );
  }
}
