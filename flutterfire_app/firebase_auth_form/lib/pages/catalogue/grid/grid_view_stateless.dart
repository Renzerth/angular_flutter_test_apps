import 'package:flutter/material.dart';

//My imports
import 'package:firebase_auth_form/pages/catalogue/grid/grid_element.dart';

// https://api.flutter.dev/flutter/widgets/GridView-class.html

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverGrid.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[100],
                child: const GridElement(
                  buttonName: 'su_47',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[200],
                child: const GridElement(
                  buttonName: 'f_15',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[300],
                child: const GridElement(
                  buttonName: 'f_22',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[400],
                child: const GridElement(
                  buttonName: 'f_18',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[500],
                child: const GridElement(
                  buttonName: 'mig_29',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[600],
                child: const GridElement(
                  buttonName: 'su_35',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
