//https://morioh.com/p/39c674119b0f

import 'package:flutter/material.dart';
import 'package:firebase_auth_form/widgets/forms/stepper/custom_input.dart';

List<Step> getSteps() {
  int currentStep = 0;
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
            hint: "City and State",
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
      title: const Text("Misc"),
      content: Column(
        children: const [
          CustomInput(
            hint: "Bio",
            inputBorder: OutlineInputBorder(),
          ),
        ],
      ),
    ),
  ];
}