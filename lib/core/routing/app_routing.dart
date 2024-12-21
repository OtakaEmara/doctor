import 'package:doctor/core/di/dependancy_injection.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/ui/login_screen.dart';

class AppRouting{

  static Route generateRouters(RouteSettings setting){

    switch(setting.name){
      case Routers.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routers.login:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: LoginScreen(),
        ));

      default:
        return MaterialPageRoute(builder: (_) {
          return Container();
          },
        );
    }
  }

}