import 'package:firebase_auth_form/widgets/forms/stepper/form_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// My imports
import 'package:firebase_auth_form/ui/bottom_nav_bar.dart';
import 'package:firebase_auth_form/ui/buttons/logout_button.dart';
import 'package:firebase_auth_form/imgs/logo/static_images.dart';

import 'package:firebase_auth_form/profile/perfil.dart';

// Body Widgets
import 'package:firebase_auth_form/pages/home_page/home_page_after_login.dart';
import 'package:firebase_auth_form/pages/catalogue/grid/grid_view_stateless.dart';

// Test Widgets
//import 'package:firebase_auth_form/pages/splash_screen/splash_page_stateless.dart';
//import 'package:firebase_auth_form/ui/swipper/swipper_container.dart';
//import 'package:firebase_auth_form/widgets/colored_counter.dart';

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
  //App Bar
  late List<Widget> bodyWidgets;
  List<String> appBarTitles = ["Home Page", "Catalogue Viewer", "Purchases"];

  // Lazy init for SwipperContainer callback
  @override
  List<Widget> initState() {
    super.initState();

    // Swiper callback
    void onSwiperIndxChange(int index) {
      setState(() {
        currentImg = index;
      });
    }

    // List Widgets for body elements
    bodyWidgets = <Widget>[
      //const ColoredCounter(), //Container(color: Colors.red),
      HomePageAL(callback: onSwiperIndxChange),
      const GridPage(), //Container(color: Colors.orange),
      //Container(color: Colors.blue),
      const FormPage()
    ];

    return bodyWidgets;
  }

// Callback to update body state from child widget

  // Nav Bar callback
  void onItemTapped(int index) {
    setState(() {
      page = index;
    });
  }

  // Logout btn callback
  void onLogoutTapped() {
    setState(() {
      _signOut();
    });
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // Update title string
      appBar: AppBar(
        centerTitle: false,
        title: LogoImg(titleString: appBarTitles[page]),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          const CircleAvatar(
            minRadius: 8,
            maxRadius: 18,
            child: Icon(Icons.person, color: Colors.white, size: 30.0),
          ),
          LogoutButton(callback: onLogoutTapped),
        ],
        elevation: 0,
      ),

      drawer: Drawer(
        child: PerfilPage(
          uid: uidLogin,
          email: idMail,
          //child: const Text('Test'),
        ),
      ),

      // Change body acording nav bar index
      body: bodyWidgets[page],

      bottomNavigationBar: BottNavBar(
        callback: onItemTapped, // does not work "(int value) {onItemTapped;}""
      ),

      // floatingActionButton is from the Scaffold constructor
    );
  }
}
