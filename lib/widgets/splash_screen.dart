//es lo primero que se muestra cuando el logotipo se carga

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      //context es la clase en donde estas, palabra reservada que contiene una clase
      // que pide en donde estas en este momento y hacia donde quieres ir
      //pushReplacementNamed, reemplaza la url y elimina el historial( Not Go Back )
      // ignore: use_build_context_synchronously
      
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 7, 255),
      body: Center(
        child: Image.asset(
          'logo.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
