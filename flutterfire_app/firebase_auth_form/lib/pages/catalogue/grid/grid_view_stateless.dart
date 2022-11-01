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
                    child: const GridElement(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),
                ],
              ),
            ),
          ],
    );
  }
}