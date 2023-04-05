import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/components/buttonCard.dart';
import 'package:padsou/components/customInput.dart';
import 'package:padsou/components/customItem.dart';
import 'package:padsou/components/iconBox.dart';
import 'package:padsou/components/navigationBarBottom.dart';
import 'package:padsou/components/textTitle.dart';
import 'package:padsou/views/addPlan_desc.dart';
import 'package:padsou/views/addPlan_photo.dart';
import 'package:padsou/views/home.dart';
import 'package:padsou/views/profil.dart';

class AddPlan extends StatefulWidget {
  @override
  AddPlanState createState() => AddPlanState();
}

class AddPlanState extends State<AddPlan> {
  int _currentStep = 1;

  Widget _buildStepWidget() {
    switch (_currentStep) {
      case 1:
        return AddPlanDesc(
          nextStep: _nextStep,
          parentContext: context,
        );
      case 2:
        return AddPlanPhoto();
      default:
        return AddPlanDesc(
          nextStep: _nextStep,
          parentContext: context,
        );
    }
  }

  void _nextStep() {
    setState(() {
      _currentStep++; // incrémente l'étape actuelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightBlue,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 50.0, right: 150.0, left: 50.0),
                          child: textTitle(
                            title: "AJOUTER",
                            subtitle:
                                "Un bon plan pour en faire profiter les autres",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 30.0),
                  decoration: const BoxDecoration(
                    color: CustomColors.lightWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: _buildStepWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
