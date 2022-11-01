import 'package:flutter/material.dart';

//My imports
import 'package:firebase_auth_form/pages/catalogue/products/details.dart';

class Catalogo extends StatefulWidget {
  const Catalogo({super.key});

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  static const listaProductos = <Widget>[
    Tab(
      text: 'Tortas',
      icon: Icon(Icons.cloud_outlined),
    ),
    Tab(
      text: 'Galletas',
      icon: Icon(Icons.beach_access_sharp),
    ),
    Tab(
      text: 'Postres',
      icon: Icon(Icons.brightness_5_sharp),
    ),
    Tab(
      text: 'Pasteles',
      icon: Icon(Icons.android),
    ),
  ];

  static const listaPaginas = <Widget>[
    Center(
      child: DetailsPage(producto: 'Tortas'),
    ),
    Center(
      child: DetailsPage(
        producto: 'Galletas',
      ),
    ),
    Center(
      child: DetailsPage(
        producto: 'Postres',
      ),
    ),
    Center(
      child: DetailsPage(
        producto: 'Pasteles',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
          // ignore: prefer_const_constructors
          bottom: TabBar(
            tabs: listaProductos,
          ),
        ),
        body: const TabBarView(
          children: listaPaginas,
        ),
      ),
    );
  }
}
