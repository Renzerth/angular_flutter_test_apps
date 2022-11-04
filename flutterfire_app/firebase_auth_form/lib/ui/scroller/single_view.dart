import 'package:flutter/material.dart';

class SingleScroller extends StatelessWidget {
  const SingleScroller({super.key, required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            //minHeight: viewportConstraints.maxHeight,
            ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[childWidget]),
      ),
    );
  }
}
