import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/ui/typo.dart';
import 'package:padsou/components/buttonCard.dart';
import 'package:padsou/components/slider/slider.dart';
import 'package:padsou/components/ImageGrid.dart';

class register extends StatefulWidget {
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightBlue,
      body: Column(
        children: [
          const SizedBox(height: 80),
          Column(
            children: [
          Center(
              child: Text(
                'PAS DE SOUS ?',
                style: CustomTextStyle.title(),
              ),
            ),
          Center(
              child: Text(
                'Y’A PADSOU.',
                style: CustomTextStyle.title(color: Colors.pink),
              ),
            ),
          ],
          ),
        ],
      ),
    );
  }
}
