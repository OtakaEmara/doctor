import 'package:flutter/material.dart';

extension Navigation on BuildContext{
  Future pushNamed(String routeName,[Object? arguments]){
    return Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }

  Future pushReplacementNamed(String routeName,[Object? arguments]){
    return Navigator.of(this).pushReplacementNamed(routeName,arguments: arguments);
  }

  Future pushNamedAndRemoveUntil(String routeName,RoutePredicate predicate,[Object? arguments]){
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName,predicate,arguments: arguments);
  }

  void pop()=> Navigator.of(this).pop();
}