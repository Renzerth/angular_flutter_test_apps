import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/pages/splash_screen/splash_info_page.dart';

class SplashStatelessWidget extends StatelessWidget {
  const SplashStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, textStyle: const TextStyle(fontSize: 20));

    final ButtonStyle style2 =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash_1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            /*Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/splash_1.jpg',
                  height: 500, width: double.infinity, fit: BoxFit.fitHeight),
            ),*/

            ElevatedButton(
              style: style1,
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: const Text('More info'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style2,
              onPressed: () {},
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const PageInfo(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}