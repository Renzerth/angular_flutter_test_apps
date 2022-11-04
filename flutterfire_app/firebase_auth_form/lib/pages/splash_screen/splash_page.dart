import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/pages/splash_screen/splash_page_stateless.dart';
//import 'dart:js';
//import 'package:flutter/widgets.dart';

/*void main() {
  runApp(const SplashPage(
    title: 'Aircraft Catalogue',
  ));
}*/

/*class SplashPage extends StatelessWidget {
  const SplashPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          title: const Text('Aircraft Catalogue'),
        ),*/
        body: SplashStatefulWidget(),
      ),
    );
  }
}*/

class SplashStatefulWidget extends StatefulWidget {
  const SplashStatefulWidget({super.key});

  @override
  State<SplashStatefulWidget> createState() => __SplashStatefulWidgetState();
}

class __SplashStatefulWidgetState extends State<SplashStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const SplashStatelessWidget();
  }
}
