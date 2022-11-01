import 'package:flutter/material.dart';

// My Imports
import 'package:firebase_auth_form/pages/catalogue/catalogo.dart';

class GridElement extends StatelessWidget {
  const GridElement({super.key});

  // static double _elementSize = 30; // conflicts if children is constant
  // https://api.flutter.dev/flutter/widgets/Stack-class.html
  // https://appmaking.com/display-image-in-flutter/

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 250,
      //height: 250,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            //width: 250,
            //height: 250,
            color: Colors.white,
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45
                ],
              ),
            ),

            child: Column(
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                    "https://gamingbolt.com/wp-content/uploads/2018/08/Ace-Combat-7-48.jpg", // Image.asset('foo.png'),
                    //height: 200,
                    //width: 200,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                const Text(
                  'Foreground Text',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),

                const SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                child: const Text('Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Catalogo()),
                  );
                },
              ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
