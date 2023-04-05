import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({Key? key}) : super(key: key);

  @override
  NavigationBarBottomState createState() => NavigationBarBottomState();
}

class NavigationBarBottomState extends State<NavigationBarBottom> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.white, // Couleur de fond du body de l'application
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Ink(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: CustomColors.lightGrey,
                      border: Border.all(
                        color: CustomColors.lightGrey.withOpacity(0.3),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.home,
                        color: _selectedIndex == 0
                            ? CustomColors.lightBlue
                            : Colors.grey[600]),
                  ),
                ),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Ink(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: CustomColors.lightGrey,
                      border: Border.all(
                        color: CustomColors.lightGrey.withOpacity(0.3),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.add_circle_outlined,
                        color: _selectedIndex == 1
                            ? CustomColors.lightBlue
                            : Colors.grey[600]),
                  ),
                ),
                label: 'Ajouter',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Ink(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: CustomColors.lightGrey,
                      border: Border.all(
                        color: CustomColors.lightGrey.withOpacity(0.3),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.account_circle,
                        color: _selectedIndex == 2
                            ? CustomColors.lightBlue
                            : Colors.grey[600]),
                  ),
                ),
                label: 'Profil',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
