import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTapBar extends StatelessWidget {
  const HomeTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Osama!",style: TextStyles.font18darkBlue700weight,),
            vertical(5),
            Text("How Are you Today?",style: TextStyles.font12smoothGrey400weight,)
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.moreSmoothLightGrey,
          child: SvgPicture.asset("assets/svgs/home_tap_button.svg"),
        )
      ],
    );
  }
}
