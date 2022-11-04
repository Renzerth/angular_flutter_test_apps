import 'package:flutter/material.dart';

// My Imports
import 'package:firebase_auth_form/pages/catalogue/catalogo.dart';

// My Classes
import 'package:firebase_auth_form/pages/catalogue/products/urldata/images.dart';


class GridElement extends StatelessWidget {
  final String buttonName;
  const GridElement({super.key, required this.buttonName});

  // static double _elementSize = 30; // conflicts if children is constant
  // https://api.flutter.dev/flutter/widgets/Stack-class.html
  // https://appmaking.com/display-image-in-flutter/

  @override
  Widget build(BuildContext context) {

    var textData = GridTextData.getGridDetails()[buttonName];
    
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
                    textData["urlimage"], // Image.asset('foo.png'),
                    //height: 200,
                    //width: 200,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Text(
                  textData["name"],
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                ),

                const SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                child: const Text('Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Catalogo(planeKey: buttonName)),
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
