import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SpecialityAndSeeAll extends StatelessWidget {
  const SpecialityAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctor Speciality",style: TextStyles.font18black600weight,),
        Spacer(),
        Text('See All',style: TextStyles.font12blue400weight,)
      ],
    );
  }
}
