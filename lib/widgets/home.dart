import 'package:flutter/material.dart';
import 'package:learning/widgets/content_column.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Es semejante al safeArea o flex:1 en React Native
    //Dicta que sea en desarrollo móvil y permite colocar fondos de pantalla

    return Scaffold(
      //Es recomendable tenerlo para cada vista
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            //extract Widget
            ContentColumn(
                title: 'Primer Columna', description: 'Aprendiendo flutter'),
            ContentColumn(
                title: 'Segunda Columna', description: 'Aprendiendo flutter2'),
            ContentColumn(
                title: 'Tercer Columna', description: 'Aprendiendo flutter3'),
          ],
        ),
      ),
      //floating esta fuera de body por ser propiedad de scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('This is javaScript ._?'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      //Esta propiedad cambia la posicion del boton respetando la buttomBar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
