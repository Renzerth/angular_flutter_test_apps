import 'package:flutter/material.dart';

class TextWrapperBox extends StatelessWidget {
  final String textToWrapp;
  final double wrapScale;

  const TextWrapperBox({super.key, required this.textToWrapp, required this.wrapScale});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * wrapScale,
      child: Text(
        textToWrapp,
        style: const TextStyle(
            color: Colors.black, fontSize: 18.0),
      ),
    );

    /*Container(
        child: Row(
      children: <Widget>[Flexible(child: Text(textToWrapp))],
    ));*/
  }
}
