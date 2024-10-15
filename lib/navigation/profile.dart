import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Profile extends StatelessWidget {
//constructor
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Es semejante al safeArea o flex:1 en React Native
    //Dicta que sea en desarrollo móvil y permite colocar fondos de pantalla

    return Scaffold(
      //Es recomendable tenerlo para cada vista
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 114, 116, 119),
                    foregroundColor: Colors.white,
                    child: Text('AH'),
                  ),
                  SizedBox(width: 12  ,),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text("Kevin Guzmán",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      Text("Hace 10 minutos", style: TextStyle(fontSize: 12,color: Colors.black54),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                  //Expanded(child: Align(alignment: Alignment(x, y),))
                ],
              ),
            ),
            /*
            Image.asset('assets/logo.png',width: double.infinity,height: 300,),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.message),
                  Icon(Icons.ios_share_outlined),
                  Spacer(),
                  Icon(Icons.save_alt)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("data"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("data"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("data"),
            ),
            */
            Spacer(),
            SizedBox(
              width:double.infinity,
              height:48,
              child: ElevatedButton(
                onPressed: () async => await FirebaseAuth.instance.signOut(),
                child:Text("Cerrar sesión")
              )
            )
            //estudiar expanded
          ],
        
        ),
      )
    );
  }
}
