import 'package:flutter/material.dart';
import 'package:learning/navigation/home.dart';
import 'package:learning/navigation/profile.dart';
import 'package:learning/navigation/reservations.dart';
import 'package:learning/navigation/top.dart';

class Navigation extends StatefulWidget {
//constructor
  const Navigation({
    super.key,
  });
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Top(),
    Profile(),
    Reservations()
  ];

  void _onItemTapped(int index) {
    //es obligatorio
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.start),
            label: 'Top 5',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            label: 'Reservaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
