import 'package:firebase_auth_form/ui/textcontainers/text_bullet_list.dart';
import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/textcontainers/text_box_bullet.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.producto}) : super(key: key);
  final String producto;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    List<String> strList = ["A", "B", "C"];
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              //fit: BoxFit.fill,
              child: Image(
                image: const NetworkImage(
                  'https://nordicapis.com/wp-content/uploads/API-Specifications-Calm-Chaos-of-Digital-Transformation-Part-2-1024x576.png',
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.45,
              ),
            ),
          ),
          /*Text(
            'Catalogo de ${widget.producto}',
            style: const TextStyle(fontSize: 20.0),
          ),*/

          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Column(children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Specifications",
                    style: TextStyle(
                      color: Color.fromRGBO(71, 75, 78, 1),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(color: Colors.black),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.40,
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(child: BorderedTextBoxBullet(strList: strList)),
                    const SizedBox(
                      height: 2,
                    ),
                    Expanded(child: BorderedTextBoxBullet(strList: strList)),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
