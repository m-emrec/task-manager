import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo/Pages/home_page.dart';
import 'package:todo/Pages/sign_in_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snaphot) {
        User? user = snaphot.data;

        if (user == null) {
          return SignInPage();
        } else {
          return const HomePage();
        }
      },
    );
  }
}
