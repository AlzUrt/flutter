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

class Profil extends StatefulWidget {
  @override
  ProfilState createState() => ProfilState();
}

class ProfilState extends State<Profil> {
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
                            title: "MON PROFIL",
                            subtitle:
                                "Modifie tes infos affichées aux autres sur l'app",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 110.0),
                  decoration: const BoxDecoration(
                    color: CustomColors.lightWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                      ),
                      CustomInput(
                        title: 'Mon pseudo',
                        hintText: 'jacky74bonplan',
                      ),
                      CustomInput(
                        title: "Adresse email",
                        hintText: "jacky@gmail.com",
                      ),
                      CustomInput(
                        title: "Mot de passe",
                        hintText: "********************",
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
                              child: const Text('Enregistrer'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
