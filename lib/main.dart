import 'package:flutter/material.dart';
import 'package:learning/modules/auth/screens/login.dart';
import 'package:learning/navigation/home.dart';
import 'package:learning/navigation/navigation.dart';
import 'package:learning/navigation/reservations.dart';
import 'package:learning/navigation/top.dart';
import 'package:learning/navigation/profile.dart';
import 'package:learning/widgets/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) =>  const SplashScreen(),
        '/menu':(context) =>  const Navigation(),
        '/home':(context) => const Home(),
        '/top':(context) => const Top(),
        '/reservations':(context) => const Reservations(),
        '/profile':(context) => const Profile(),
        '/login':(context) => const Login()
      },
    );
  }
}
