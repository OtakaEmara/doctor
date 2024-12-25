import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SetupPassword extends StatelessWidget {

  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const SetupPassword({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        passDesign('At least 1 lowercase letter', hasLowercase),
        vertical(2),
        passDesign('At least 1 uppercase letter', hasUppercase),
        vertical(2),
        passDesign(
            'At least 1 special character', hasSpecialCharacters),
        vertical(2),
        passDesign('At least 1 number', hasNumber),
        vertical(2),
        passDesign('At least 8 characters long', hasMinLength),
      ],
    );
  }

  passDesign(String text,bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: Colors.black,
        ),
        horizontal(7),
        Text(text,style: TextStyles.font13black500weight.copyWith(
          decoration: hasValidated? TextDecoration.lineThrough:null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? AppColors.grey : AppColors.darkBlue,
        ),)
      ],
    );
  }
}
