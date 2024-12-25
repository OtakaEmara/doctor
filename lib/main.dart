import 'package:doctor/core/di/dependancy_injection.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setUpGetIt();
  runApp(const MyApp());
}
