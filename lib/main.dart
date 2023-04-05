import 'package:flutter/material.dart';
import 'package:padsou/views/addPlan_desc.dart';
import 'package:padsou/views/addPlan_photo.dart';
import 'package:padsou/views/home.dart';
import 'package:padsou/views/onboarding.dart';
import 'package:padsou/views/plans.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Padsou',
      home: Plans(),
    );
  }
}
