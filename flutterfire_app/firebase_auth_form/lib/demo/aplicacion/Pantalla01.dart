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

class _Pantalla01State extends State<Pantalla01> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: PerfilPage(
          uid: globals.uidLogin,
          email: globals.idMail,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
