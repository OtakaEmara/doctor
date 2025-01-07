import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityAndListView extends StatelessWidget {
  const SpecialityAndListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.moreSmootherLightGrey,
                      child: Image.asset("assets/images/home_general_doctor.png",height: 30,),
                    ),
                    vertical(10),
                    Text('General',style: TextStyles.font12black400weight,)
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return horizontal(35);
              },
            ),
          )
        ],
      ),
    );
  }
}
