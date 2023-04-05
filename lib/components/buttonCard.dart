import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/ui/typo.dart';
class CustomButtonStyle {
  static ButtonStyle title({Color color = Colors.white}) {
    return ElevatedButton.styleFrom(
      primary: CustomColors.pink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: CustomTextStyle.textbutton(color: color),
    );
  }
}