import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/ui/typo.dart';
import 'package:padsou/components/buttonCard.dart';
import 'package:padsou/components/slider/slider.dart';
import 'package:padsou/components/ImageGrid.dart';

class onBoarding extends StatefulWidget {
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightBlue,
      body: Column(
        children: [
          const SizedBox(height: 80),
          
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
            const Spacer(),
          Column(
              children: [
                // Slider
                MyCarousel(),

                // Texte des bons plans
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 95),
                  child: Text(
                    'Accède aux 500 bons plans qu’on te propose chaque mois',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Spacer(),
          // Boutton C'est parti
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: 261,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  // style: CustomButtonStyle.title(),
                  child: const Text('C’est parti !'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
