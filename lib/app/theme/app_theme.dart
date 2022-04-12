import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.redAccent),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black.withOpacity(0.1),
    buttonColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.redAccent),
  );
}
