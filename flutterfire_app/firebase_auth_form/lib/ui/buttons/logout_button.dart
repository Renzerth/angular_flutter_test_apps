import 'package:flutter/material.dart';

// Callbacks - > Blueprint
typedef IntCallback = void Function();
class LogoutButton extends StatelessWidget {

  final IntCallback callback; // Receives funtion with "setState" to update parent
  const LogoutButton({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: const Icon(Icons.logout_rounded),
            tooltip: 'Exit',
            onPressed: callback,
          );
  }
}