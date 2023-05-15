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
            child: Stack(
              children: const [
                // Login 
                Positioned(
                  top: 100,
                  height: 70,
                  left: 30,
                  width: 300,
                  child: Logo()
                ),
                // Caja de formulario 
                Positioned(
                  top: 230,
                  height: 250,
                  left: 30,
                  width: 300,
                  child: FormLogin()
                ),
                // Botones de inicio de sesión normal y con google 
                Positioned(
                  top: 480,
                  height: 90,
                  left: 30,
                  width: 300,
                  child: LoginButtons()
                ),
                // Boton de registro 
                Positioned(
                  top: 430,
                  height: 35,
                  left: 70,
                  width: 220,
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

class LoginButtons  extends StatelessWidget {
  const LoginButtons ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        
        // FloatingActionButton(  onPressed: (){},child: const Text('Iniciar sesión'),),
        Container(
          height: 50,
          width: 140,
          child: ElevatedButton(onPressed: (){}, 
          child: const Text('Iniciar sesión', style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), // Esquinas rectangulares
              ),
            ),
          )),        
       const Padding( padding: EdgeInsets.all(10)),
        // FloatingActionButton( onPressed: (){}, child: const Text('Google'),),
            Container(
              height: 50,
              width: 140,
              child: SignInButton(
                Buttons.google,
                onPressed: () {
                  // Aquí puedes agregar la lógica para iniciar sesión con Google
                  
                  print('Iniciar sesión con Google');
                },
                text: 'Con Google',
                
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
                  const TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0),),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),),
                      labelText: 'Usuario',
                       labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                 const  Padding(padding: EdgeInsets.all(15)),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: !_showPassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0),),
                      focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),),
                      labelText: 'Contraseña',
                       labelStyle: const TextStyle(color: Colors.white),
                      suffixIcon: IconButton(
                        icon: Icon(_showPassword ? Icons.visibility_off : Icons.visibility, color: Colors.white,),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
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

