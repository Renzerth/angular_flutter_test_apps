import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

//My imports
import 'package:firebase_auth_form/global.dart' as globals;
import 'package:firebase_auth_form/pages/main_page/base_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return const SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
            /*GoogleProviderConfiguration(
                clientId:
                    ''),*/
          ]);
        }

        //variables globales de identificación
        globals.uidLogin = snapshot.data!.uid;
        globals.idMail = snapshot.data!.email!;

        // Render your application if authenticated
        return const BasePage(title: 'Aircraft Catalogue');
      },
    );
  }
}
