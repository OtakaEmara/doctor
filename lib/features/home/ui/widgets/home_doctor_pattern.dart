import 'package:doctor/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class HomeDoctorPattern extends StatelessWidget {
  const HomeDoctorPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/home_pattern.png"))
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 30.h,left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book and\nschedule with\nnearest doctor',style: TextStyles.font18white500weight,),
                  vertical(10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.h)
                        ),
                        onPressed: () {

                        },
                        child: Text('Find Nearby',style: TextStyles.font12blue400weight,),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset(
              "assets/images/home_doctor.png",
            ),
          )
        ],
      ),
    );
  }
}
