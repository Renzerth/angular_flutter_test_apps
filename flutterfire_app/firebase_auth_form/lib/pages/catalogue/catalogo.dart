
import 'package:flutter/material.dart';

//My imports
import 'package:firebase_auth_form/global.dart';
import 'package:firebase_auth_form/ui/swipper/swipper_container.dart';

import 'package:firebase_auth_form/pages/catalogue/products/tab_widgets/overview_page.dart';
import 'package:firebase_auth_form/pages/catalogue/products/tab_widgets/details_page.dart';
import 'package:firebase_auth_form/pages/catalogue/products/tab_widgets/performance_page.dart';


class Catalogo extends StatefulWidget {
  final String planeKey;
  const Catalogo({super.key, required this.planeKey});

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> with TickerProviderStateMixin { // SingleTickerProviderStateMixin
  late List<Widget> listaPaginas; // lazy init for widgets list
  //late String planeKey = widget.planeKey; // Init here fore scope
  late TabController _tabController;

  // Lazy init for SwipperContainer callback
  @override
  List<Widget> initState() {
    super.initState();

    void onSwipperChange(int index) {
      setState(() {
        currentImg = index;
      });
    }

    void onAddBtnPressed(int index) {
    }

    void onBuyBtnPressed() {
    }

    void onMoreBtnPressed(int index) {
      //print("here");
      _tabController.animateTo(2); // Change tab position
    }

    String planeKey = widget.planeKey; 
    listaPaginas = <Widget>[
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              SwipperContainer(callback: onSwipperChange, planeKey: planeKey),

              const SizedBox(height: 20,),
              BorderedTextBox(planeKey: planeKey, callbackAddBtn:onAddBtnPressed),// Pass key as parameter
            ],
          ),
        ),
      ),

      Center(
          child: DetailsPage(planeKey: planeKey, callbackMoreBtn: onMoreBtnPressed),
      ),

      Center(
        child: PerfmsPage(planeKey: planeKey),
      ),

      Center(
        child: DetailsPage(planeKey: planeKey, callbackMoreBtn: onMoreBtnPressed),
      ),
    ];

    _tabController = TabController(vsync:this, length: listaPaginas.length); //  with SingleTickerProviderStateMixin {

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
          bottom: TabBar( // remove constant when using _tabContoller
            controller: _tabController,
            tabs: listaProductos,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: listaPaginas,
        ),
      ),
    );
  }
}
