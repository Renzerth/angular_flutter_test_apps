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
      //margin: const EdgeInsets.only(right: 8),
      //padding: const EdgeInsets.only(left: 2),
      //height: MediaQuery.of(context).size.height*0.8,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 244, 245),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1),
      ),
      child: Row(
        children: <Widget>[
          //const Icon(Icons.description_outlined),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 15),
                BulletList(strList: strList)],
            ),
          ),
        ],
      ),
    );
  }
}




