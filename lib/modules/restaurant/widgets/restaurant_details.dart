import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:carousel_slider/carousel_slider.dart';
class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({
    required this.name,
    required this.description,
    required this.images,
    required this.rating,
    required this.count,
    super.key,
  });
  final String name;
  final String description;
  final List<String> images;
  final double rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text(name)
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    children:[
                        CarouselSlider(
                            options: CarouselOptions(height: 300.0),
                            items: images.map((i){
                                return Builder(
                                    builder:( BuildContext context){
                                        return Container(
                                            width: MediaQuery.of(context).size.width,
                                            margin: const EdgeInsets.symmetric(horizontal: 5.0),        
                                            child: Image.network(
                                                i, 
                                                fit: BoxFit.cover, 
                                            ),
                                        );
                                    }
                                );
                            }).toList(),
                        ),
                        SizedBox(height:20),
                        Row(
                            children:[
                                Text(name,style:const TextStyle(fontWeight:FontWeight.bold)),
                                const Expanded(
                                    child: Column()
                                ),
                                StarRating(
                                    rating: rating / count,
                                    color: Colors.orange,
                                    borderColor: Colors.grey,
                                    starCount: 5,
                                    size: 12,
                                )
                            ]
                        ),
                        const SizedBox(
                            height:20
                        ),
                        SizedBox(
                            width:double.infinity,
                            child: Text(description)
                        )
                    ]
                ),
            )
        ),
    );
  }
}