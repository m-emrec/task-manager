import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //// MediaQuery
  Size get deviceSize => MediaQuery.of(this).size;

  //// Theme
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}
