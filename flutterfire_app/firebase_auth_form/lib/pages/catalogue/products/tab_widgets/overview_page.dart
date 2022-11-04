import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/textcontainers/text_box_icon.dart';
import 'package:firebase_auth_form/ui/buttons/rnded_sld_sqrt_btn.dart';
import 'package:firebase_auth_form/ui/buttons/rnded_outLn_sqrt_btn.dart';
import 'package:firebase_auth_form/ui/borders/fitted_colored_box.dart';

// My classes
import 'package:firebase_auth_form/pages/catalogue/products/textdata/overview_data.dart';

typedef IntCallback = void Function(int value);

class BorderedTextBox extends StatelessWidget {
  final String planeKey;
  final IntCallback callbackAddBtn;

  const BorderedTextBox(
      {super.key, required this.planeKey, required this.callbackAddBtn});
  @override
  Widget build(BuildContext context) {
    // Get dynamic text to display for each key
    var textData = OverviewTextData.getDictDetails()[planeKey];

    return FittedBox(
      fit: BoxFit.fill,
      child: FittedColoredBox(
        color: Colors.blueAccent,
        scale: const [1, 0.46],
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
            const SizedBox(
              height: 2,
            ),
            const Divider(color: Colors.black),
            const SizedBox(
              height: 5,
            ),
            BorderedTextBoxIcon(
              descriptString: textData["description"],
              iconDecoration: const Icon(Icons.description_outlined),
              scales: const [0.9, 0.3],
              wrapScale: 0.75,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RndedsldSqrBtn(
                  callback: callbackAddBtn,
                  btnText: 'ADD TO CART',
                ),
                const SizedBox(
                  width: 20,
                ),
                const RndedOutLnSqrBtn(
                  btnText: 'BUY!',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
