//es lo primero que se muestra cuando el logotipo se carga

import 'package:flutter/material.dart';
import 'package:learning/widgets/home.dart';

class SplashScreen extends StatelessWidget {
const SplashScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Center(
      child: Image.asset('logo.png',width: 200, height: 200,),
    );
  }
}

