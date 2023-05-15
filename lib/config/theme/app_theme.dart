import 'package:flutter/material.dart';

const colorSeed=Color.fromARGB(255, 255, 255, 255);
const scaffoldBackgroundColor = Color.fromARGB(255, 24, 27, 167);

class AppTheme{
  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorSeed,

    scaffoldBackgroundColor: scaffoldBackgroundColor,
  );
}