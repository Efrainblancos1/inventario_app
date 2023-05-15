import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inventario_app/main.dart';
import 'package:flutter_login/flutter_login.dart';

import 'package:sign_in_button/sign_in_button.dart';

// import 'package:sign_in_button/sign_in_button.dart';

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
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fondo.webp'), fit: BoxFit.fill)),
            child: Stack(
                  
              children: const [
             
                // Login 
                Positioned(
                  top: 100,
                  height: 70,
                  left: 60,
                  width: 250,
                  child: Logo()
                ),
                // Caja de formulario 
                Positioned(
                  top: 230,
                  height: 250,
                  left: 60,
                  width: 250,
                  child: FormLogin()
                ),
                // Botones de inicio de sesión normal y con google 
                Positioned(
                  top: 440,
                  height: 60,
                  left: 30,
                  width: 300,
                  child: LoginButtons()
                ),
                // Boton de registro 
                Positioned(
                  top:510,
                  height: 35,
                  left: 0,
                  width: 200,
                  child: Registrar()
                ),
                Positioned(
                  top: 510,
                  height: 35,
                  left: 155,
                  width: 200,
                  child: OlvideContrasena()
                ),

              ],
            ),
          ),
        ),
      );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/ludycom.png');
  }
}

class LoginButtons extends StatelessWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 140,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Iniciar sesión',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), // Esquinas rectangulares
              ),
            ),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                // offset: Offset(0, 5),
              ),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Container(
          height: 40,
          width: 140,
          child: SignInButton(
            Buttons.google,
            onPressed: () {
              // Aquí puedes agregar la lógica para iniciar sesión con Google
              print('Iniciar sesión con Google');
            },
            text: 'Con Google',
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                // offset: Offset(0, 5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            const TextField(
              style: TextStyle(color: Colors.white),
              obscureText: false,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                ),
                labelText: 'Usuario',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(15)),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              obscureText: !_showPassword,
              controller: _passwordController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                ),
                labelText: 'Contraseña',
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class OlvideContrasena extends StatelessWidget {
  const OlvideContrasena({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: const Text('Olvidé contraseña', style: TextStyle(color: Colors.white),));
    

  }
}

class Registrar extends StatelessWidget {
  const Registrar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: const Text('Registrarme', style: TextStyle(color: Colors.white),));
  }
}

// -------------------------------------------------------------------- 


// -------------------------------------------------------------- 
class Color extends StatelessWidget {
  const Color({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.purple,
    );
  }
}

class Color2 extends StatelessWidget {
  const Color2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.green,
    );
  }
}

class Color3 extends StatelessWidget {
  const Color3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.yellow,
    );
  }
}

class ColorAuxiliar extends StatelessWidget {
  const ColorAuxiliar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.black,
    );
  }
}

