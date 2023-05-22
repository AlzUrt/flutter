import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  final IconData iconData;
  final Color? backgroundColor;
  final String label;

  const IconBox(
      {Key? key,
      required this.iconData,
      this.backgroundColor,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: backgroundColor ?? Colors.grey[200],
          ),
          child: Icon(
            iconData,
            color: Colors.white,
            size: 40,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: 'Integral', fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
