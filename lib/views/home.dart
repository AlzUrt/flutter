import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/components/custom_item.dart';
import 'package:padsou/components/icon_box.dart';
import 'package:padsou/components/text_title.dart';
import 'package:padsou/firebase/firebase_listener.dart';
import 'package:padsou/views/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<Home> {
  bool _showLogoutButton = false;

  void _toggleLogoutButton() {
    setState(() {
      _showLogoutButton = !_showLogoutButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightBlue,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding:const EdgeInsets.only(bottom: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 50.0, left: 50.0),
                        child: const TextTitle(
                          title: "COUCOU TOI,",
                          subtitle: "T'es en manque de thunes ?",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: _toggleLogoutButton,
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/images/imageProfil.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    if (_showLogoutButton)
                      ElevatedButton(
                        onPressed: () {
                          // Déconnexion de l'utilisateur
                          signOut();
                          // Redirection vers la vue de connexion
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()),
                          );
                        },
                        child:const Text('Déconnexion'),
                      ),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cherche un bon plan',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[400],
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
                ),
              ),
              Container(
                padding:const EdgeInsets.only(bottom: 30.0),
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
                    SizedBox(
  height: 120,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      IconBox(
        iconData: Icons.shopping_bag_outlined,
        backgroundColor: CustomColors.darkBlue,
        label: 'Courses',
      ),
      SizedBox(width: 10),
      IconBox(
        iconData: Icons.directions_run_outlined,
        backgroundColor: CustomColors.lightRed,
        label: 'Sport',
      ),
      SizedBox(width: 10),
      IconBox(
        iconData: Icons.train_outlined,
        backgroundColor: CustomColors.skyBlue,
        label: 'Trains',
      ),
      SizedBox(width: 10),
      IconBox(
        iconData: Icons.celebration_outlined,
        backgroundColor: CustomColors.lightSkyBlue,
        label: 'Soirées',
      ),
    ],
  ),
),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'LES PLANS DU MOMENT',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Integral'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Voir tout',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GridView.count(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  crossAxisCount: 2,
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  children: const [
    CustomGridItem(
      image: 'lib/assets/images/image1.png',
      logo: 'lib/assets/images/logo1.png',
      title: 'Abonnement 1 an',
      description: '2 mois offerts',
    ),
    CustomGridItem(
      image: 'lib/assets/images/image2.png',
      logo: 'lib/assets/images/logo2.png',
      title: 'Le grand barathon',
      description: '1 verre acheté = 1 offert',
    ),
    CustomGridItem(
      image: 'lib/assets/images/image3.png',
      logo: 'lib/assets/images/logo3.png',
      title: 'Garantie appart',
      description: 'Pas besoin de garants',
    ),
    CustomGridItem(
      image: 'lib/assets/images/image4.png',
      logo: 'lib/assets/images/logo4.png',
      title: 'Giga MAXI tacos',
      description: '5€99, dépêche-toi !',
    ),
    CustomGridItem(
      image: 'lib/assets/images/image1.png',
      logo: 'lib/assets/images/logo1.png',
      title: 'Abonnement 1 an',
      description: '2 mois offerts',
    ),
    CustomGridItem(
      image: 'lib/assets/images/image1.png',
      logo: 'lib/assets/images/logo1.png',
      title: 'Abonnement 1 an',
      description: '2 mois offerts',
    ),
  ],
)

                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
