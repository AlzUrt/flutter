import 'package:flutter/material.dart';
class CustomTextStyle {
  static TextStyle title({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'IntegralCF',
      decoration: TextDecoration.none
      );
    }

  static TextStyle textbutton({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'IntegralCF',
      decoration: TextDecoration.none
      );
    }

    static TextStyle text({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'inter',
      decoration: TextDecoration.none
      );
    }

    static TextStyle textgras({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: 'inter',
      decoration: TextDecoration.none
      );
    }

    static TextStyle condition({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: 'inter',
      decoration: TextDecoration.none
      );
    }
}

