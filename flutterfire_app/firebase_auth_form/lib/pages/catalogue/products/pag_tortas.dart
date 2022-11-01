import 'package:flutter/material.dart';

class PagTortas extends StatefulWidget {
  const PagTortas({Key? key, required this.producto}) : super(key: key);
  final String producto;
  @override
  State<PagTortas> createState() => _PagTortasState();
}

class _PagTortasState extends State<PagTortas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: NetworkImage(
              'https://thumbs.dreamstime.com/z/tortas-rom%C3%A1nticas-13267153.jpg',
            ),
            width: 300,
            height: 300,
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
