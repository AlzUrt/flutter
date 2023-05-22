import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/ui/typo.dart';
import 'package:padsou/components/button_card.dart';
import 'package:padsou/components/slider/slider.dart';
import 'package:padsou/views/register.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<OnBoarding> {
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
            const Spacer(),
          Column(
              children: const [
                // Slider
                MyCarousel(),
                 SizedBox(height: 25),
                // Texte des bons plans
                 Padding(
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
          Column(
            children: [
              Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: 261,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const  Register()),
                        );
                    },
                    style: CustomButtonStyle.title(),
                    child: const Text('C’est parti !'),
                  ),
                ),
              ),
            ),
            ] 
          ),
        ],
      ),
    );
  }
}
