import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';

class CustomTextStyle {
  static TextStyle title({Color color = CustomColors.white}) {
    return TextStyle(
      color: color,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'IntegralCF',
      decoration: TextDecoration.none
      );
    }

  static TextStyle textbutton({Color color = CustomColors.white}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'IntegralCF',
      decoration: TextDecoration.none
      );
    }

    static TextStyle text({Color color = CustomColors.white}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'inter',
      decoration: TextDecoration.none
      );
    }
}

