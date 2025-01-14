import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/features/home/data/models/home_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors> doctorListData;
  const DoctorListView({super.key, required this.doctorListData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: doctorListData.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(doctorListData[index].photo)
                  )
                ),
              ),
              horizontal(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctorListData[index].name,style: TextStyles.font16black700weight,),
                  vertical(10),
                  Text(doctorListData[index].email,style: TextStyles.font12grey500weight,)
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
