import 'perfil.dart';

import '../global.dart' as globals;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Pantalla01 extends StatefulWidget {
  const Pantalla01({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Pantalla01> createState() => _Pantalla01State();
}

class _Pantalla01State extends State<Pantalla01> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  //String uid_usuario = globals.uidLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Salir',
            onPressed: () {
              setState(() {
                _signOut();
              });
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PerfilPage(
                uid: globals.uidLogin,
                email: globals.idMail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
