import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/label_tags/price_tags_painter.dart';

class PriceTagContainer extends StatelessWidget {
  final Widget textChild;

  const PriceTagContainer({super.key, required this.textChild});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.height * 0.25,
      child: CustomPaint(
        painter: PriceTagPaint(),
        child: Center(
          child: textChild,
        ),
      ),
    );
  }
}
