import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/features/home/ui/widgets/doctor_list_view.dart';
import 'package:doctor/features/home/ui/widgets/home_doctor_pattern.dart';
import 'package:doctor/features/home/ui/widgets/home_tap_bar.dart';
import 'package:doctor/features/home/ui/widgets/speciality_and_list_view.dart';
import 'package:doctor/features/home/ui/widgets/speciality_and_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTapBar(),
              vertical(5),
              HomeDoctorPattern(),
              vertical(25),
              SpecialityAndSeeAll(),
              vertical(20),
              SpecialityAndListView(),
              DoctorListView()
            ],
          ),
        ),
      ),
    );
  }
}
