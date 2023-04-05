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

class AddPlanDesc extends StatefulWidget {
  final Function nextStep;
  final BuildContext parentContext;

  const AddPlanDesc({
    Key? key,
    required this.nextStep,
    required this.parentContext,
  }) : super(key: key);

  @override
  AddPlanDescState createState() => AddPlanDescState();
}

class AddPlanDescState extends State<AddPlanDesc> {
  void _nextStep() {
    widget.nextStep();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
        ),
        CustomInput(
          title: 'Titre',
          hintText: 'Abonnement 1 an de Basic-Fit',
        ),
        CustomInput(
          title: "Description",
          hintText: "Ne soit pas trop bavard, on s'en fou, va à l'essentiel",
          maxLines: 5,
        ),
        CustomInput(
          title: "Lien",
          hintText: "www.lienverstonbonplan.com",
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: 261,
              height: 56,
              child: ElevatedButton(
                onPressed: _nextStep,
                style: CustomButtonStyle.title(
                    backgroundColor: CustomColors.lightBlue),
                child: const Text('Suivant'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
