import 'package:flutter/material.dart';
import 'package:padsou/views/home.dart';
import 'package:padsou/views/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Padsou',
      home: onBoarding(),
    );
  }
}
