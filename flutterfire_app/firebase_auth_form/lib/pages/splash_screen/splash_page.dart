import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const SplashPage(
    title: 'Aircraft Catalogue',
  ));
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aircraft Catalogue'),
        ),
        body: const SplashStatefulWidget(),
      ),
    );
  }
}

class SplashStatefulWidget extends StatefulWidget {
  const SplashStatefulWidget({super.key});

  @override
  State<SplashStatefulWidget> createState() => __SplashStatefulWidgetState();
}

class __SplashStatefulWidgetState extends State<SplashStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, textStyle: const TextStyle(fontSize: 20));

    final ButtonStyle style2 =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/ace-combat-3.jpg',
                height: 500, width: double.infinity, fit: BoxFit.cover),
          ),
          ElevatedButton(
            style: style1,
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: const Text('More info'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style2,
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const PageInfo(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class PageInfo extends StatelessWidget {
  const PageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aircraft Catalogue'),
      ),
      body: Center(
          child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/ace-combat-3.jpg',
                height: 250, width: double.infinity, fit: BoxFit.cover),
          ),
          Container(
              alignment: Alignment.center,
              child: const Text(
                'Enjoy our Aircraft Catalogue, and find all that you need know about these wing machines',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              )),
        ],
      )),
    );
  }
}
