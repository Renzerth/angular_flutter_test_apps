import 'package:flutter/material.dart'; // cupertino -> no hay problema si es en web. Si es android -> material

class CurveBottonStyle extends StatelessWidget {
  const CurveBottonStyle({super.key, required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 64,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 5))
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: childWidget,
    );
  }
}
