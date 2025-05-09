import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String usuarioValido = 'leokim';
  String contrasenaValida = '12345';

  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  String mensaje = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Iniciar sesión', style: TextStyle(fontSize: 35)),
              const SizedBox(height: 20),
              const Text('Ingrese sus datos', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              const Text('Usuario:', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              TextField(controller: textController1),
              const SizedBox(height: 20),
              const Text('Contraseña:', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              TextField(
                controller: textController2,
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  inputUsuario = textController1.text.trim();
                  inputContrasena = textController2.text.trim();

                  setState(() {
                    if (inputUsuario.isEmpty && inputContrasena.isEmpty) {
                      mensaje = 'No se ingresaron usuario ni contraseña';
                    } else if (inputUsuario.isEmpty) {
                      mensaje = 'No se ingresó usuario';
                    } else if (inputContrasena.isEmpty) {
                      mensaje = 'No se ingresó contraseña';
                    } else if (inputUsuario == usuarioValido &&
                        inputContrasena == contrasenaValida) {
                      mensaje = 'Inicio de sesión exitoso';
                    } else {
                      mensaje = 'Usuario o contraseña incorrectos.';
                    }
                  });
                },
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 20),
              Text(
                mensaje,
                style: TextStyle(
                  fontSize: 16,
                  color: mensaje == 'Inicio de sesión exitoso'
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
