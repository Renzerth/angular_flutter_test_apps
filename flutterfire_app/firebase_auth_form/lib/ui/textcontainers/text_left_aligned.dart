import 'package:flutter/material.dart';

class LeftInfoText extends StatelessWidget {
  final String textSring;

  const LeftInfoText({super.key, required this.textSring});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        textSring,
        style: const TextStyle(
          color: Color.fromRGBO(71, 75, 78, 1),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
