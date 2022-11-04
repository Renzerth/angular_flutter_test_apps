import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/pages/splash_screen/splash_page_stateless.dart';

class PageInfo extends StatelessWidget {
  const PageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash_2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            /*Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/splash_2.jpg',
                  height: 250, width: double.infinity, fit: BoxFit.cover),
            ),*/
            Container(
              margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
              padding: const EdgeInsets.all(6),
              alignment: Alignment.center,
              child: const Text(
                'Enjoy our Aircraft Catalogue, and find all that you need know about these wing machines!',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SplashStatelessWidget()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text(
                'Return',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
