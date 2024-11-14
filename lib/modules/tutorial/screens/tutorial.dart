import 'package:flutter/material.dart';
import 'package:learning/navigation/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Tutorial extends StatefulWidget {
const Tutorial({ super.key });

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  Future<void> _notShowAgain() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('tutorial', true);
    Navigator.pushReplacementNamed(context, '/menu');
  }

  Future<void> _next() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('tutorial', false);
    Navigator.pushReplacementNamed(context, '/menu');
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
          child: Column(
            children: [
              Image.network('https://placehold.co/600x320/red/white/png',width: double.infinity,height: 320,),
              const SizedBox(height: 16),
              const Text("Bienvenido"),
              const Spacer(),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const Navigation(showTutorial: true,))),
                child: const Text("Continuar"),
              ),
              InkWell(
                onTap: () => _notShowAgain(),
                child: const Text("hola"),
              )
            ],
          ),
        ),
      ),
    );
  }
}