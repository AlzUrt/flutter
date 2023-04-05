import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/components/customItem.dart';
import 'package:padsou/components/iconBox.dart';
import 'package:padsou/components/navigationBarBottom.dart';
import 'package:padsou/components/textTitle.dart';

class Home extends StatefulWidget {
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightBlue,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 120,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(28),
                    child: textTitle(
                      title: "COUCOU TOI,",
                      subtitle: "T'es en manque de thunes ?",
                    ),
                  ),
                ),
                Container(
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
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
            decoration: const BoxDecoration(
              color: CustomColors.lightWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
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
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: GridView.count(
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
                        image: 'lib/assets/images/image5.png',
                        logo: 'lib/assets/images/logo1.png',
                        title: 'Abonnement 1 an',
                        description: '2 mois offerts',
                      ),
                      CustomGridItem(
                        image: 'lib/assets/images/image6.png',
                        logo: 'lib/assets/images/logo1.png',
                        title: 'Abonnement 1 an',
                        description: '2 mois offerts',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: const NavigationBarBottom(),
    );
  }
}
