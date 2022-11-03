import 'package:flutter/material.dart';

class TextWrapperBox extends StatelessWidget {
  final String textToWrapp;

  const TextWrapperBox({super.key, required this.textToWrapp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
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
