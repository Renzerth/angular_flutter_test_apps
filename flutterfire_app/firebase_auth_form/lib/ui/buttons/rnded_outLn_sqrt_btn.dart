import 'package:flutter/material.dart';

// https://daniyal-dolare.medium.com/flutter-new-material-buttons-their-theme-and-migrations-54b3c3d6309a
class RndedOutLnSqrBtn extends StatelessWidget {
  final String btnText;
  const RndedOutLnSqrBtn({
    super.key,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        side: const BorderSide(color: Colors.blue, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(btnText, style: const TextStyle(fontSize: 18)),
    );
  }
}
