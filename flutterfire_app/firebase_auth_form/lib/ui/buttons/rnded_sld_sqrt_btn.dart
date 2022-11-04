import 'package:flutter/material.dart';

// https://stackoverflow.com/questions/49991444/create-a-rounded-button-button-with-border-radius-in-flutter

typedef IntCallback = void Function(int value);

class RndedsldSqrBtn extends StatelessWidget {
  final String btnText;
  final IntCallback callback; // Receives funtion with "setState" to update parent
    
  const RndedsldSqrBtn({super.key, required this.btnText, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.blue)))),
      onPressed:(){callback;},
      child: Text(btnText,
          style: const TextStyle(fontSize: 18)
        ),
    );
  }
}
