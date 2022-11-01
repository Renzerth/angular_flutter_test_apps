import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/global.dart';

// Callbacks - > Blueprint
typedef IntCallback = void Function(int value);

// https://medium.com/nerd-for-tech/lifting-state-up-and-callbacks-7a19d0bdbe53
class BottNavBar extends StatelessWidget {

  final IntCallback callback; // Receives funtion with "setState" to update parent
  //final int page;

  //BottNavBar({@required this.callback});
  const BottNavBar({super.key, required this.callback});
  //const BottNavBar({super.key, required this.onSonChanged });


  void onItemTapped(int index) {
      //page = index; // index carries the current pressed nav item
      callback(index); // update parent with received callback
      //print(page);
  }

  /*
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Catalogue',
      style: optionStyle,
    ),
    Text(
      'Index 2: Purchases',
      style: optionStyle,
    ),
  ];
*/

  @override
  Widget build(BuildContext context) {
    return /*Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: */
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book), // library_books 
            label: 'Catalogue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Purchases',
          ),
        ],
        currentIndex: page,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      );
    //);
  }
}