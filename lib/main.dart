import 'package:flutter/material.dart';
import 'package:foot_app_ui/screen/landing_screeng.dart';
import 'package:foot_app_ui/utils/contans.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: defaultText),
      home: LandingScreen(),
    );
  }
}
