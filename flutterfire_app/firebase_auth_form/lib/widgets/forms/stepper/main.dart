//https://morioh.com/p/39c674119b0f

import 'package:flutter/material.dart';
//import 'package:firebase_auth_form/widgets/forms/stepper/form_page.dart';
import 'package:firebase_auth_form/widgets/forms/stepper/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormPage(),
    );
  }
}