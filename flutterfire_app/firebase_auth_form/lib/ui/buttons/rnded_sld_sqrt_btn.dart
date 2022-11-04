import 'package:flutter/material.dart';

// https://stackoverflow.com/questions/49991444/create-a-rounded-button-button-with-border-radius-in-flutter
class RndedsldSqrBtn extends StatelessWidget {
  final String btnText;
  const RndedsldSqrBtn({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.blue)))),
      onPressed:(){},
      child: Text(btnText,
          style: const TextStyle(fontSize: 18)
        ),
    );
  }
}
