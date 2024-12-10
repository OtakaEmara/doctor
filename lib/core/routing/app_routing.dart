import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/features/login/login_screen.dart';
import 'package:doctor/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouting{

  static Route generateRouters(RouteSettings setting){

    switch(setting.name){
      case Routers.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routers.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Container();
          },
        );
    }
  }

}