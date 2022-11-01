import 'package:flutter/material.dart';

// My Imports
import 'package:firebase_auth_form/pages/catalogue/grid/grid_view.dart';

class ColoredCounter extends StatefulWidget {
  const ColoredCounter({super.key});

  @override // Genera el state
  State<ColoredCounter> createState() => _ColoredCounterState();
}

class _ColoredCounterState extends State<ColoredCounter> {
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
    return Center(
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
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: const Text('Catalogue'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GridPage()),
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 54,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _decrementCounter,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(
                  Icons.exposure_minus_1,
                  color: Colors.black,
                  size: 54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
