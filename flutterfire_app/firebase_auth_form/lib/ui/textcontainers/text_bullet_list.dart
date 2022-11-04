import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strList;

  const BulletList({super.key, required this.strList});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:8, bottom: 10),
      //padding: const EdgeInsets.all(5),
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
        children: strList.map((strone) {
          return Row(children: [
            const Text(
              "• ",
              style: TextStyle(fontSize: 16),
            ), //bullet text
            const SizedBox(
              width: 10,
            ), //space between bullet and text
            Container(
              child: Text(
                strone,
                style: const TextStyle(fontSize: 16),
              ), //text
            )
          ]);
        }).toList(),
      ),
    );
  }
}