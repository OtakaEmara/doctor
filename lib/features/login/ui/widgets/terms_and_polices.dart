import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndPolices extends StatelessWidget {
  const TermsAndPolices({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our  ',
              style: TextStyles.font12smoothGrey400weight
          ),
          TextSpan(
              text: 'Terms & Conditions ',
              style: TextStyles.font13black500weight
          ),
          TextSpan(
              text: 'and ',
              style: TextStyles.font12smoothGrey400weight
          ),
          TextSpan(
              text: 'PrivacyPolicy.',
              style: TextStyles.font13black500weight.copyWith(height: 2),
          ),
        ]
      ),
    );
  }
}
