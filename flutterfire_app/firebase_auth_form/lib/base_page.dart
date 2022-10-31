import 'package:flutter/material.dart';

import 'imgs/static_images.dart';

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
  // clase -> StatefulWidget -> State
  // Se crea el estado. Dentro del state se tiene el build
  int _counter = 0;
  final int _capacity = 50;
  double _occupation = 0.0; // no hay float o single
  Color bkThemeColor = Colors.green;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 50) {
        _counter = 50;
      }
      _occupation = _counter / _capacity * 100;

      if (_occupation > 50) {
        bkThemeColor = Colors.yellow;
      }
      if (_occupation > 80) {
        bkThemeColor = Colors.redAccent;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) {
        _counter = 0;
      }
      _occupation = _counter / _capacity * 100;

      if (_occupation < 80) {
        bkThemeColor = Colors.yellow;
      }
      if (_occupation < 50) {
        bkThemeColor = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // El build tiene la parte gráfica
    // BuildContext -> Object handler of the widget location
    return Scaffold(
      // context -> framework -> The part of the UI represented by the widget
      // Andamiaje por que se construye por capas
      // LogoImg
      appBar: AppBar(
        //title: Text(widget.title),
        title: const LogoImg(), // llamar el widget
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // const gives error when using variables
              'Counter value: $_counter',
            ),
            Text('%$_occupation',
                style: TextStyle(fontSize: 50, backgroundColor: bkThemeColor)
                //Theme.of(context)
                //   .textTheme
                //    .headline4, //TextStyle() -> Constructor -> Color/Fontsize/backgroundColor
                ),
          ],
        ),
      ),

      floatingActionButton: Row(
        // No puede estar otra vez "floatingActionButton:" en los children
        children: <Widget>[
          // childrens del widget en el contenedor row
          FloatingActionButton(
            // Esto es un fullstate widget no un evento -> Solo un widget
            onPressed: _decrementCounter, // onPressed -> Callback function
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            // Esto es un fullstate widget no un evento -> Solo un widget
            onPressed: _incrementCounter, // onPressed -> Callback function
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
