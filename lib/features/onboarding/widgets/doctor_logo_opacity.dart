import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';

class DoctorLogoOpacity extends StatelessWidget {
  const DoctorLogoOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/logo_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: AlignmentDirectional.bottomCenter,
              end: AlignmentDirectional.topCenter,
              stops: const [0.14,0.4]
            )
          ),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
            left: 0.h,
            right: 0.h,
            bottom: 15.h,
            child: Text('Best Doctor \n Appointment App',
              style: TextStyles.font32blueBold.copyWith(height: 1.5),
              textAlign: TextAlign.center,)
        ),
      ],
    );
  }
}
