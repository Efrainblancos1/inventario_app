import 'package:flutter/material.dart';
import 'package:inventario_app/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const _FormLogin();
  }
}
  
class _FormLogin extends StatelessWidget {
  const _FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Stack(
              children: [
                Image.asset('assets/ludycom.png'),
              ],              
            ),
          ),
        ),
      );
  }
}
