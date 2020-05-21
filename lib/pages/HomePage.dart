
import 'package:commerce/screen/BrowseScreen.dart';
import 'package:commerce/screen/CartScreen.dart';
import 'package:commerce/screen/HotScreen.dart';
import 'package:commerce/screen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index;
  int _selectedIndex = 0;
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
              icon: Icon(FontAwesomeIcons.bars),
              title: Text('Browse')
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.hotjar),
              title: Text('Hot')
              ),
               BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingCart),
              title: Text('Cart')
              ),
               BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userCog),
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