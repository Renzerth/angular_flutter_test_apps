import 'package:flutter/material.dart';

class BorderedTextBox extends StatefulWidget {
  const BorderedTextBox({super.key});

  @override
  State<BorderedTextBox> createState() => _BorderedTextBoxState();
}

class _BorderedTextBoxState extends State<BorderedTextBox> {
  
  @override
  Widget build(BuildContext context) {
  return FittedBox(
    fit: BoxFit.fill,
    child: Container(
      padding: const EdgeInsets.all(16.0),

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      ),

      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        children: const [
          Align(
          alignment: Alignment.topLeft,
          child: Text('Woolha.com', style: TextStyle(color: Color.fromRGBO(71, 75, 78, 1))),
        ),

        SizedBox(
          height: 2,
        ),

        Divider(
          color: Colors.black
          )
        ],
      )
    )
  );
  }
}