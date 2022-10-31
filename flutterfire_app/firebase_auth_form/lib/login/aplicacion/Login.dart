import '../global.dart' as globals;
import 'package:base01fire/aplicacion/Pantalla01.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:flutter/material.dart';

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
            GoogleProviderConfiguration(
                clientId:
                    'YOUR_PROVIDER_SDK_ID'),
          ]);
        }

        //variables globales de identificación
        globals.uidLogin = snapshot.data!.uid;
        globals.idMail = snapshot.data!.email!;

        // Render your application if authenticated
        return const MyHomePage(title: 'Flutter Demo Home Page');
      },
    );
  }
}
