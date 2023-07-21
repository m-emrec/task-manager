// class AuthProvider

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo/constants/logger.dart';

class AuthProvider extends ChangeNotifier {
  FirebaseAuth get _auth => FirebaseAuth.instance;

  signInUser() {}
  signUpUser(GlobalKey<ScaffoldMessengerState> scaffoldKey, String email,
      String password) {
    logger.i(scaffoldKey.currentState);
    ScaffoldMessenger.of(scaffoldKey.currentContext!)
        .showSnackBar(SnackBar(content: Text("asdasd")));
    try {
      _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .catchError((e) => logger.e(e));
    } catch (e) {
      logger.e(e);
    }
  }
}
