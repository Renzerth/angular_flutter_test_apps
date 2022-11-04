import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// My imports
import 'firebase_options.dart';
import 'root_widget.dart';

// void main() => runApp(BaseApp01()); // operador flecha de una instrucción
//void main(List<String> args) {}

/*Main*/
// needs to add --no-sound-null-safety
Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const BaseApp01()); // nombre de la clase para instanciar
}
