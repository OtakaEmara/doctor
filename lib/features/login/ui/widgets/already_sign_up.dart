import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadySignUp extends StatelessWidget {
  const AlreadySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Already have an account yet? ',style: TextStyles.font12black400weight),
          TextSpan(text: 'Sign Up ',style: TextStyles.font13blue600weight)
        ]
      ),
    );
  }
}
