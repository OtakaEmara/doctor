import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class RememberAndForgetPassword extends StatelessWidget {
  bool? value;
  Function(bool?)? onChanged;

  RememberAndForgetPassword({super.key, this.value,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: value ?? false,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          side: BorderSide(
            width: 2,
            color: AppColors.deepLightGrey,
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Text('Remember me',style: TextStyles.font12smoothGrey400weight,),
        Spacer(),
        Text('Forgot Password?',style: TextStyles.font12blue400weight,)
      ],
    );
  }
}
