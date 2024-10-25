import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learning/modules/restaurant/entities/restaurant.dart';
import 'package:learning/modules/restaurant/widgets/custom_list_restaurants.dart';
//crear un stateful widget
//Dentro del widget crear la instancia con final

// void initState() async {
//  super.initState()
//  await db.collection("restaurants").get().then((event) {
//  for (var doc in event.docs) {
//    print("${doc.id} => ${doc.data()}");
//  }
//});
//
//
//
//
//}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isLoading = true;
  List<Restaurant> restaurants = [];

  final db = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    (() async => {
          db.collection("restaurants").snapshots().listen((event) {
            restaurants.clear();
            for (var doc in event.docs) {
              final restaurant = Restaurant(
                  doc.data()['name'],
                  doc.data()['description'],
                  List<String>.from(doc.data()['images']),
                  doc.data()['rating'],
                  doc.data()['count']);
              restaurants.add(restaurant);
            }
            if (mounted) {
              setState(() {
                _isLoading = false;
              });
            }
          })
        })();
  }

  @override
  Widget build(BuildContext context) {
    //Es semejante al safeArea o flex:1 en React Native
    //Dicta que sea en desarrollo móvil y permite colocar fondos de pantalla
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      //Es recomendable tenerlo para cada vista
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(6),
        itemCount: restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomListRestaurants(
            restaurant: restaurants[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      //floating esta fuera de body por ser propiedad de scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/top'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      //Esta propiedad cambia la posicion del boton respetando la buttomBar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
