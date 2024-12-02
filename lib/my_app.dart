import 'package:doctor/core/routing/app_routing.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: Colors.white
        ),
        onGenerateRoute: AppRouting.generateRouters,
        initialRoute: Routers.onBoarding,
      ),
    );
  }
}
