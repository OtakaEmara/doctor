import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/home_response.dart';

class SpecialityAndListView extends StatelessWidget {
  final List<Data> specialityData;
  const SpecialityAndListView({super.key, required this.specialityData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: specialityData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.moreSmootherLightGrey,
                      child: Image.asset("assets/images/home_general_doctor.png",height: 30,),
                    ),
                    vertical(10),
                    Text(specialityData[index].name,style: TextStyles.font12black400weight,)
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
