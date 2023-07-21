import 'package:flutter/material.dart';
import 'package:todo/Pages/auth_page.dart';
import 'package:todo/Pages/home_page.dart';
import 'package:todo/Pages/sign_in_page.dart';

import '../Pages/sign_up_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  "/": (p0) => const AuthPage(),
  HomePage.routeName: (p0) => const HomePage(),
  SignInPage.routeName: (p0) => SignInPage(),
  SignUpPage.routeName: (p0) => SignUpPage(),
};
