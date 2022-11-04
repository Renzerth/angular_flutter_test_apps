// https://medium.flutterdevs.com/dropdown-in-flutter-324ae9caa743

import 'package:flutter/material.dart';

import 'package:firebase_auth_form/global.dart';

class DropdownList extends StatelessWidget {
  final void Function(String? string)? callback;
  final List<String> menuList;
  final String hintText;
  const DropdownList(
      {super.key,
      required this.callback,
      required this.menuList,
      required this.hintText});

  String? onPressedList(String? value) {
    callback!(value);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    //String chosenValue = "Paypal"; // Must be initialized with non-null
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                //labelStyle: textStyle,
                errorStyle:
                    const TextStyle(color: Colors.redAccent, fontSize: 16.0),
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            isEmpty: currentSelectedPayment == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: currentSelectedPayment,
                isDense: true,
                onChanged: onPressedList,
                items: menuList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}

/*DropdownButton<String>(
      //focusColor: Colors.white,
      value: chosenValue,
      //elevation: 5,
      style: const TextStyle(color: Colors.black),
      iconEnabledColor: Colors.black,
      items: menuList.map((String item) =>
              DropdownMenuItem<String>(value: item, child: Text(item)))
          .toList(),
      hint: Text(
        hintText,
        style: const TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      onChanged: callback,
    );*/
