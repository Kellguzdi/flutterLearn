import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
//constructor
  const Navigation({
    super.key,
  });
    @override
    State<Navigation> createState() =>
        _NavigationState();
}
class __NavigationState
    extends State<Navigation> {
  int _selectedIndex = 0;
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
    Widget build(BuildContext context){
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
        showUnselectedLabels:true,
        onTap: _onItemTapped,
      ),
        )
    }
  }
}