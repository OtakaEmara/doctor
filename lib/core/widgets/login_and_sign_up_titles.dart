import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/styles.dart';

class LoginAndSignUpTitles extends StatelessWidget {
  final String title;
  final String body;
  const LoginAndSignUpTitles({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyles.font24blue700weight,),
        vertical(10),
        Text(body,style: TextStyles.font14grey400weight.copyWith(
            height: 1.5.h
        ),),
      ],
    );
  }
}
