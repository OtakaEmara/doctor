import 'package:doctor/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/home_doctor_list.png")
                  )
                ),
              ),
              horizontal(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr. Randy Wigham",style: TextStyles.font16black700weight,),
                  vertical(10),
                  Text('General | RSUD Gatot Subroto',style: TextStyles.font12grey500weight,)
                ],
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return vertical(30);
        },
      ),
    );
  }
}
