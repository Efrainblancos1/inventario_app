import 'package:flutter/material.dart';
import 'package:inventario_app/config/theme/app_theme.dart';
import 'package:inventario_app/presentation/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Inventario',
      theme: AppTheme().getTheme(),
      home:  const Login()
    );
  }
}

