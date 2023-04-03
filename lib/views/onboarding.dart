import 'package:flutter/material.dart';

class onBoarding extends StatefulWidget {
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padsou"),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("nom")],
            ),
          ),
        ),
      ),
    );
  }
}