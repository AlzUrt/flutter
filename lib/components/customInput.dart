import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';

class CustomInput extends StatelessWidget {
  final String title;
  final String hintText;
  final int? maxLines;

  const CustomInput({
    Key? key,
    required this.title,
    required this.hintText,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Integral',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              filled: true,
              fillColor: Colors.grey[200],
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: CustomColors.lightBlue,
                  width: 2.0,
                ),
              ),
            ),
            maxLines: maxLines,
            textAlignVertical: TextAlignVertical.top,
          ),
        ),
      ],
    );
  }
}
