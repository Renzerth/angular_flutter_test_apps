import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/textcontainers/text_wrapper.dart';
class BorderedTextBoxIcon extends StatelessWidget {
  final String descriptString;
  final Icon iconDecoration;
  final double wrapScale;
  final List<double> scales;

  const BorderedTextBoxIcon({super.key, required this.descriptString,
   required this.iconDecoration, required this.scales, required this.wrapScale}); // required this.planeKey

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.only(left: 16),
      width: MediaQuery.of(context).size.width*scales[0], // 0.1
      height: MediaQuery.of(context).size.height*scales[1], // 0.3
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 244, 245),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1),
      ),
      child: Row(
        children: <Widget>[
          iconDecoration,
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextWrapperBox(
                  textToWrapp: descriptString,
                  wrapScale: wrapScale,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
