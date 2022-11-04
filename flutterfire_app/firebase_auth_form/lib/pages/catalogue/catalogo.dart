import 'package:flutter/material.dart';

//My imports

import 'package:firebase_auth_form/pages/catalogue/products/details.dart';
import 'package:firebase_auth_form/global.dart';

import 'package:firebase_auth_form/ui/swipper/swipper_container.dart';
import 'package:firebase_auth_form/ui/textcontainers/text_border.dart';

class Catalogo extends StatefulWidget {
  final String planeKey;
  const Catalogo({super.key, required this.planeKey});

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  late List<Widget> listaPaginas; // lazy init for widgets list

  // Lazy init for SwipperContainer collabck
  @override
  List<Widget> initState() {
    super.initState();

    void onSwipperChange(int index) {
      setState(() {
        currentImg = index;
      });
    }

    listaPaginas = <Widget>[
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              SwipperContainer(callback: onSwipperChange),

              const SizedBox(height: 20,),
              BorderedTextBox(planeKey: widget.planeKey),// Pass key as parameter
            ],
          ),
        ),
      ),

      const Center(
          child: DetailsPage(producto: 'Galletas'),
      ),

      const Center(
        child: DetailsPage(
          producto: 'Postres',
        ),
      ),
      const Center(
        child: DetailsPage(
          producto: 'Pasteles',
        ),
      ),
    ];
    return listaPaginas;
  }

  static const listaProductos = <Widget>[
    Tab(
      text: 'Overview',
      icon: Icon(Icons.image_outlined),
    ),
    Tab(
      text: 'Specifications',
      icon: Icon(Icons.developer_board),
    ),
    Tab(
      text: 'Performance',
      icon: Icon(Icons.dashboard),
    ),
    Tab(
      text: 'Buy it!',
      icon: Icon(Icons.add_shopping_cart),
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
          bottom: const TabBar(
            tabs: listaProductos,
          ),
        ),
        body: TabBarView(
          children: listaPaginas,
        ),
      ),
    );
  }
}
