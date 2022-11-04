import 'package:flutter/material.dart';

class FittedColoredBox extends StatelessWidget {
  final Widget child;
  final Color color;
  final List<double> scale;

  const FittedColoredBox(
      {super.key, required this.child, required this.color, required this.scale}); // required this.planeKey

  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      fit: BoxFit.fill,
      child: Container(
        //padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width * scale[0],
        height: MediaQuery.of(context).size.height * scale[1],
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        ),
        margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
        child: child,
      )
    );
  }
}

