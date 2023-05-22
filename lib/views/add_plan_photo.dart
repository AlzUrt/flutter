import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/components/button_card.dart';

class AddPlanPhoto extends StatefulWidget {
  const AddPlanPhoto({Key? key}) : super(key: key);

  @override
  AddPlanPhotoState createState() => AddPlanPhotoState();
}

class AddPlanPhotoState extends State<AddPlanPhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 150.0),
      decoration: const BoxDecoration(
        color: CustomColors.lightWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
          ),
          const Text(
            "Photo du bon plan",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Integral",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: SizedBox(
              height: 200,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.lightBlue, // Use backgroundColor instead of primary
                  foregroundColor: Colors.white, // Use foregroundColor instead of onPrimary
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: 261,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: CustomButtonStyle.title(
                      backgroundColor: CustomColors.lightBlue),
                  child: const Text('Ajouter ce bon plan'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
