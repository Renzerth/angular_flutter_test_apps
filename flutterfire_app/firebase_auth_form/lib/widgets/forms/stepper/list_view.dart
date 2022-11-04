//https://morioh.com/p/39c674119b0f

import 'package:firebase_auth_form/global.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth_form/widgets/forms/stepper/custom_input.dart';
import 'package:firebase_auth_form/widgets/forms/stepper/dropdown_list.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int currentStep = 0;

  String? onPressedList(String? value) {
    setState(() {
      currentSelectedPayment = value;
    });
    return null;
  }
  
  List<String> paymentList = <String>["Paypal", "Paybox", "PSE"];

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 88, 161, 90),
          title: const Text(
            "Payment information",
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: currentStep,
            onStepCancel: () => currentStep == 0
                ? null
                : setState(() {
                    currentStep -= 1;
                  }),
            onStepContinue: () {
              bool isLastStep = (currentStep == getSteps().length - 1);
              if (isLastStep) {
                //Do something with this information
              } else {
                setState(() {
                  currentStep += 1;
                });
              }
            },
            onStepTapped: (step) => setState(() {
              currentStep = step;
            }),
            steps: getSteps(),
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text("Account Info"),
        content: Column(
          children: const [
            CustomInput(
              hint: "First Name",
              inputBorder: OutlineInputBorder(),
            ),
            CustomInput(
              hint: "Last Name",
              inputBorder: OutlineInputBorder(),
            ),
            CustomInput(
              hint: "Organization",
              inputBorder: OutlineInputBorder(),
            ),
          ],
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("Address"),
        content: Column(
          children: const [
            CustomInput(
              hint: "Country",
              inputBorder: OutlineInputBorder(),
            ),
            CustomInput(
              hint: "State",
              inputBorder: OutlineInputBorder(),
            ),
            CustomInput(
              hint: "City",
              inputBorder: OutlineInputBorder(),
            ),
            CustomInput(
              hint: "Postal Code",
              inputBorder: OutlineInputBorder(),
            ),
          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Payment"),
        content: Column(
          children: [
            DropdownList(
              callback: onPressedList,
              hintText: 'Payment Methods',
              menuList: paymentList,
            ),
            const CustomInput(
              hint: "Payment Credentials",
              inputBorder: OutlineInputBorder(),
            ),
          ],
        ),
      ),
    ];
  }
}
