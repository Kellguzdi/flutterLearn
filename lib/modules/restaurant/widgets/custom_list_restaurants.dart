import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:learning/modules/restaurant/entities/restaurant.dart';
import 'package:learning/modules/restaurant/widgets/restaurant_details.dart';
class CustomListRestaurants extends StatelessWidget {
  const CustomListRestaurants({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RestaurantDetails(
                images: restaurant.images,
                name: restaurant.name,
                description: restaurant.description,
                rating: restaurant.rating,
                count: restaurant.count,
              );
            },
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            restaurant.images[0],
            width: 60,
            height: 60,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: Text(
                  restaurant.description,
                ),
              )
            ],
          ),
          const Spacer(),
          StarRating(
            rating: restaurant.rating / restaurant.count,
            color: Colors.orange,
            borderColor: Colors.grey,
            starCount: 5,
            size: 12,
          )
        ],
      ),
    );
  }
}