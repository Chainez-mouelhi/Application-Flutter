// Gère

// screen/device.dart

import 'package:flutter/material.dart';
import 'package:flutter_application/screen/nouveaute.dart';
import 'package:flutter_application/screen/home.dart';


class DeviceScreen extends StatefulWidget {
  @override
  // Appel a la creation de l'état
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  //
  int _currentScreen = 0;

  // Liste des écrans
  final List<Widget> _screenList = [
    HomeScreen(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _screenList[
          _currentScreen], //Pour montrer la page quand je serai à son numéro
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        iconSize: 25,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
          // Options de présentation


          // L'index
          currentIndex: _currentScreen,
          // L'écouteur : Ce passe quelque chose à une action
          onTap: onTabTapped,

          // Liste de bouton
          items: const [
            //
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: "Nouveauté"),


          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
