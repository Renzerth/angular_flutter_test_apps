import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/textcontainers/text_box_icon.dart';
import 'package:firebase_auth_form/ui/buttons/rnded_sld_sqrt_btn.dart';
import 'package:firebase_auth_form/ui/buttons/rnded_outLn_sqrt_btn.dart';

// My classes
import 'package:firebase_auth_form/pages/catalogue/products/textdata/overview.dart';

class BorderedTextBox extends StatelessWidget {
  final String planeKey;

  const BorderedTextBox({super.key, required this.planeKey});
  @override
  Widget build(BuildContext context) {
    // Get dynamic text to display for each key
    var textData = OverviewTextData.getDictDetails()[planeKey];

    return FittedBox(
        fit: BoxFit.fill,
        child: Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(textData["name"],
                      style: const TextStyle(
                        color: Color.fromRGBO(71, 75, 78, 1),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 2,),
                const Divider(color: Colors.black),

                const SizedBox(height: 5,),
                BorderedTextBoxIcon(descriptString: textData["description"]),

                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    RndedsldSqrBtn(
                      btnText: 'ADD TO CART',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RndedOutLnSqrBtn(
                      btnText: 'BUY!',
                    ),
                  ],
                ),
              ],
            )));
  }
}
