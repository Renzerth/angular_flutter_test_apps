import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/borders/fitted_colored_box.dart';
import 'package:firebase_auth_form/ui/buttons/rnded_sld_sqrt_btn.dart';
import 'package:firebase_auth_form/ui/textcontainers/text_box_bullet.dart';
import 'package:firebase_auth_form/ui/label_tags/price_tags_container.dart';

import 'package:firebase_auth_form/pages/catalogue/products/textdata/specs_data.dart';

typedef IntCallback = void Function(int value);

class DetailsPage extends StatelessWidget {
  final String planeKey;
  final IntCallback callbackMoreBtn;

  const DetailsPage(
      {super.key, required this.planeKey, required this.callbackMoreBtn});
  @override
  Widget build(BuildContext context) {
    var textData = SpecTextData.getDictDetails()[planeKey];

    //var strListCharct = textData.where((m) => m['characteristics'] != null).map((value) => value['characteristics']).toList();
    // strListCharct = textData.map((value) => value['characteristics']);
    //textData.map((key, value) => MapEntry(key, value));
    //textData.map((m) => m.values.join('|'));

    //var strListCharct = textData.map((key, value) => key+":"+value).toList();
    //print(textData['characteristics'].keys.toList());

    /*textData['characteristics'].forEach((key, value) {
      print('Key = $key : Value = $value');
    });*/

    List<String> strListCharct = [];
    textData['characteristics'].forEach((k, v) => strListCharct.add("$k:$v"));

    List<String> strListPerfm = [];
    textData['performance'].forEach((k, v) => strListPerfm.add("$k: $v"));

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
                    "Specifications",
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
                  //height: MediaQuery.of(context).size.width*0.1,
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: BorderedTextBoxBullet(
                                  strList: strListCharct)),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child:
                                  BorderedTextBoxBullet(strList: strListPerfm)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RndedsldSqrBtn(
                            callback: callbackMoreBtn,
                            btnText: 'More!',
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          PriceTagContainer(
                            textChild: Text(
                              "     US\$ ${textData["cost"]}",
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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
