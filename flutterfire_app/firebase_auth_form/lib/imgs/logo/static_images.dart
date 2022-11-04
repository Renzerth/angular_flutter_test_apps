import 'package:flutter/material.dart';

class LogoImg extends StatelessWidget {
  const LogoImg({super.key, required this.titleString});

  final String titleString;

  // static double _elementSize = 30; // conflicts if children is constant

  @override
  Widget build(BuildContext context) {
    // logo encima, texto abajo -> Marca blanca el logo Distribución Column vertical / Row horizontal
    return Row(
      children: [
        Column(
          children: const [
            Icon(Icons.airplane_ticket_outlined , color: Colors.white, size: 30.0),
            Text("Sensorica", style: TextStyle(fontSize: 15.0)),
          ],
        ),
        // const Spacer(), // https://www.flutterbeads.com/space-between-widgets-in-flutter/

        const SizedBox(
          width: 30, //<-- SEE HERE
        ),

        Text(titleString, style: const TextStyle(fontSize: 20.0))
      ],
    );
  }
}
