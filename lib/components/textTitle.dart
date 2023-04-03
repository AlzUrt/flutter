import 'package:flutter/material.dart';

class textTitle extends StatelessWidget {
  final String? title;
  final String? subtitle;

  textTitle({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: Colors.white,
              fontFamily: 'Integral'),
        ),
        const SizedBox(height: 8.0),
        Text(
          subtitle!,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
