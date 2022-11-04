import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/textcontainers/text_bullet_list.dart';

class BorderedTextBoxBullet extends StatelessWidget {
  final List<String> strList;
  const BorderedTextBoxBullet(
      {super.key, required this.strList}); // required this.planeKey

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.only(left: 16),
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 244, 245),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1),
      ),
      child: Row(
        children: <Widget>[
          //const Icon(Icons.description_outlined),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[BulletList(strList: strList)],
            ),
          ),
        ],
      ),
    );
  }
}