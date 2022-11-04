//https://morioh.com/p/39c674119b0f

import 'package:flutter/material.dart';
import 'package:firebase_auth_form/widgets/forms/stepper/custom_button.dart';
import 'package:firebase_auth_form/widgets/forms/stepper/custom_input.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner:
          false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 88, 161, 90),
          title: const Text(
            "Purchase Query Form",
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const CustomInput(
                hint: "Full Name",
                inputBorder: OutlineInputBorder(),
              ),
              const CustomInput(
                hint: "Phone",
                inputBorder: OutlineInputBorder(),
              ),
              const CustomInput(
                hint: "Address",
                inputBorder: OutlineInputBorder(),
              ),
              const CustomInput(
                hint: "Postal Code",
                inputBorder: OutlineInputBorder(),
              ),
              const CustomInput(
                hint: "Purchase order",
                inputBorder: OutlineInputBorder(),
              ),
              const CustomInput(
                hint: "Purchased Model",
                inputBorder: OutlineInputBorder(),
              ),
              const CustomInput(
                hint: "Quantity",
                inputBorder: OutlineInputBorder(),
              ),
              CustomBtn(
                title: const Text(
                  "Query",
                  style: TextStyle(color: Colors.white),
                ),
                callback: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
