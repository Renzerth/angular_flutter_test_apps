import 'package:flutter/material.dart'; // cupertino -> no hay problema si es en web. Si es android -> material

// My imports
import 'package:firebase_auth_form/pages/main_page/base_page.dart';
import 'package:firebase_auth_form/pages/splash_screen/splash_page.dart';
//import 'package:firebase_auth_form/profile/Login.dart';

// Nombre clase
class BaseApp01 extends StatelessWidget {
  // método constructor
  const BaseApp01({super.key}); // const para ahorrar batería

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aircraft Catalogue',
      debugShowCheckedModeBanner:
          false, // Controla la etiqueta de "debugg" -> este es del Material -> Esta en el contenedor principal

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //home: const BasePage(title: 'Aircraft Catalogue'),
      home: const SplashStatefulWidget(),
      //home: const AuthGate(),
    );
  }
}
