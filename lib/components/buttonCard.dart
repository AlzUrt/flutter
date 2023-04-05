import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/ui/typo.dart';
class CustomButtonStyle {
  static ButtonStyle title({
    Color backgroundColor = CustomColors.pink,
    Color textColor = Colors.white,
  }) {
    return ElevatedButton.styleFrom(
      primary: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: CustomTextStyle.textbutton(color: textColor),
    );
  }
}