import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

// My imports
import 'root_widget.dart';
// import 'package:firebase_auth_form/pages/main_page/base_app.dart';

// void main() => runApp(BaseApp01()); // operador flecha de una instrucción

/*Main*/
//void main(List<String> args) {
// needs to add --no-sound-null-safety

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  //);
  runApp(const BaseApp01()); // nombre de la clase para instanciar
}
