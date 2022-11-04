import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strList;

  const BulletList({super.key, required this.strList});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: strList.map((strone) {
          return Row(children: [
            const Text(
              "• ",
              style: TextStyle(fontSize: 30),
            ), //bullet text
            const SizedBox(
              width: 10,
            ), //space between bullet and text
            Container(
              child: Text(
                strone,
                style: const TextStyle(fontSize: 30),
              ), //text
            )
          ]);
        }).toList(),
      ),
    );
  }
}