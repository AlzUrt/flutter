import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60), 

      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          // cette ligne créé un bug avec le bandeau jaune et noir (le problème viens du vertical padding)
          padding: EdgeInsets.all(20),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            _buildGridTile('lib/assets/images/image1.png', 'Abonnement 1 an', '2 mois offerts', 'lib/assets/images/logo1.png'),
            _buildGridTile('lib/assets/images/image2.png', 'Le grand barathon', '1 verre acheté = 1 offert', 'lib/assets/images/logo2.png'),
            _buildGridTile('lib/assets/images/image3.png', 'Garantie appart', 'Pas besoin de garants', 'lib/assets/images/logo3.png'),
            _buildGridTile('lib/assets/images/image4.png', 'Giga MAXI Tacos', '5€99, dépêche toi !', 'lib/assets/images/logo4.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildGridTile(String imagePath, String boldText, String normalText, String logoPath) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                boldText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                normalText,
                style: TextStyle(
                  fontSize: 8
                  ),
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            // mettre le logo au dessus de l'image
            padding: const EdgeInsets.only(top: 45),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset(
                logoPath,
                width: 30,
                height: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
