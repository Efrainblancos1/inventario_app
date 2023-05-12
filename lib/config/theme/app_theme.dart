import 'package:flutter/material.dart';

const colorSeed=Color.fromARGB(255, 255, 255, 255);
const scaffoldBackgroundColor = Color.fromARGB(255, 232, 242, 255);

class AppTheme{
  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorSeed,

    scaffoldBackgroundColor: scaffoldBackgroundColor,
  );
}