import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadySignUp extends StatelessWidget {
  final String text;
  final String signingSituation;
  final Function()? onTap;
  const AlreadySignUp({super.key, required this.text, required this.signingSituation, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,style: TextStyles.font12black400weight),
        InkWell(
            onTap: onTap,
            child: Text(signingSituation,style: TextStyles.font13blue600weight)
        )
      ],
    );
  }
}
