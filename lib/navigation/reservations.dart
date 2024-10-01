import 'package:flutter/material.dart';
import 'package:learning/widgets/content_column.dart';

class Reservations extends StatelessWidget {
//constructor
  const Reservations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Es semejante al safeArea o flex:1 en React Native
    //Dicta que sea en desarrollo móvil y permite colocar fondos de pantalla

    return Scaffold(
      //Es recomendable tenerlo para cada vista
      appBar: AppBar(
        title: const Text('Reservations'),
      ),
      body: const Center(
        child: Text('Reservations'),
      )
      //floating esta fuera de body por ser propiedad de scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context,'/profile'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      //Esta propiedad cambia la posicion del boton respetando la buttomBar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}