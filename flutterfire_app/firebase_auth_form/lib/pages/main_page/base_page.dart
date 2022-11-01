import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/bottom_nav_bar.dart';
import 'package:firebase_auth_form/ui/logout_button.dart';
import 'package:firebase_auth_form/imgs/logo/static_images.dart';

// Body Widgets
import 'package:firebase_auth_form/widgets/colored_counter.dart';
import 'package:firebase_auth_form/pages/catalogue/grid/grid_view_stateless.dart';

import 'package:firebase_auth_form/global.dart';

class BasePage extends StatefulWidget {
  // Se crea la clase. Esta es un StatefulWidget
  const BasePage(
      {super.key,
      required this.title}); // key -> opcional -> kwargs [Python] pero en dict style

  final String title;

  @override // Genera el state
  State<BasePage> createState() => // Luego se crea el estado
      _BasePageState(); // Se crea Class -> BasePage, se crea el State -> _BasePageState (Con otra clase)
}

class _BasePageState extends State<BasePage> {

  //App Bar titles
  List<String> appBarTitles = ["Home Page", "Catalogue Viewer", "Purchases"];

  // List Widgets for body elements
  final List<Widget> _bodyWidgets = [
    const ColoredCounter(), //Container(color: Colors.red),
    const GridPage(),//Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];

// Callback to update body state from child widget
  void onItemTapped(int index) {
    setState(() {
      page = index;
    });
  }

  void onLogoutTapped() {
    setState(() {
      //_signOut();
    });
  }

  /*Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }*/

  // shopping_cart shopping_cart_checkout add_shopping_cart 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Update title string
        appBar: AppBar(
          title: LogoImg(titleString: appBarTitles[page]),
          actions: [
            LogoutButton(callback:onLogoutTapped),
          ],
        ),

        drawer: const Drawer(
        //child: PerfilPage(
        //  uid: globals.uidLogin,
        //  email: globals.idMail,
        child: Text('Test'),
        ),

        body: _bodyWidgets[page], // Change body acording nav bar index

        bottomNavigationBar: BottNavBar(
          callback:
              onItemTapped, // does not work "(int value) {onItemTapped;}""
        )

        // floatingActionButton is from the Scaffold constructor
        );
  }
}
