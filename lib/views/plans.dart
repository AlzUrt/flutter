import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/components/navigationBarBottom.dart';
import 'package:padsou/views/addPlan.dart';
import 'package:padsou/views/profil.dart';
import 'package:padsou/views/home.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    AddPlan(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: NavigationBarBottom(
                initialIndex: _currentIndex,
                items: [
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
                        child: const Icon(
                          Icons.home,
                        ),
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
                        child: const Icon(
                          Icons.add_circle_outlined,
                        ),
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
                            color: CustomColors.lightGrey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(
                          Icons.account_circle,
                        ),
                      ),
                    ),
                    label: 'Profil',
                  ),
                ],
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
