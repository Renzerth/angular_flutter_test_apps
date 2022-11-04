import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/borders/fitted_colored_box.dart';
//import 'package:firebase_auth_form/ui/buttons/rnded_sld_sqrt_btn.dart';
import 'package:firebase_auth_form/pages/catalogue/products/textdata/perfms_data.dart';

//typedef IntCallback = void Function(int value);

class PerfmsPage extends StatelessWidget {
  final String planeKey;

  const PerfmsPage({super.key, required this.planeKey});
  @override
  Widget build(BuildContext context) {
    var textData = PerfTextData.getDictDetails()[planeKey];

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              //fit: BoxFit.fill,
              child: Image(
                image: const NetworkImage(
                  'https://nordicapis.com/wp-content/uploads/API-Specifications-Calm-Chaos-of-Digital-Transformation-Part-2-1024x576.png',
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.45,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${textData["name"]} data:',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedColoredBox(
            color: Colors.blueAccent,
            scale: const [1, 0.45],
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Performance",
                    style: TextStyle(
                      color: Color.fromRGBO(71, 75, 78, 1),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Divider(color: Colors.black),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    //alignment: Alignment.center,
                    //fit: BoxFit.fill,
                    child: Image(
                      image: NetworkImage(
                        textData['statsurl'],
                        scale: 0.1,
                      ),
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.width*0.5,// Keeps it centered
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
