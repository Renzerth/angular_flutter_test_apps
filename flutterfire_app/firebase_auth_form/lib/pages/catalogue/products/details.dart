import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.producto}) : super(key: key);
  final String producto;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FittedBox(
            fit: BoxFit.fill,
            child: Image(
              image: NetworkImage(
                'https://thumbs.dreamstime.com/z/tortas-rom%C3%A1nticas-13267153.jpg',
              ),
              //width: 300,
              //height: 300,
            ),
          ),
          Text(
            'Catalogo de ${widget.producto}',
            style: const TextStyle(fontSize: 50.0),
          ),
        ],
      ),
    );
  }
}
