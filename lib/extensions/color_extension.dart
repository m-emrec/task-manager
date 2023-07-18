import 'package:flutter/material.dart';

extension ColorExtension on num {
  get toColor => 0xFF + this;
}
