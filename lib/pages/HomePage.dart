
import 'package:commerce/screen/BrowseScreen.dart';
import 'package:commerce/screen/CartScreen.dart';
import 'package:commerce/screen/HotScreen.dart';
import 'package:commerce/screen/ProfileScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = 
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> _widgetOptions = <Widget> [
    BrowseScreen(),
    HotScreen(),
    CartScreen(),
    ProfileScreen()
   
  ];

  void _onItemTapped(int index) {
    setState(() {
       _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
           child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar( 
        items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Browse')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text('Hot')
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('Cart')
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Profile')
              ),
             
              
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,

         ),
   
    );
  }
}