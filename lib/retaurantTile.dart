import 'package:assess/restaurant_model.dart';
import 'package:flutter/material.dart';

class RestauranTile extends StatelessWidget {
  const RestauranTile({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                restaurant.icnoUrl,
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width * .7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          restaurant.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          color: Colors.green,
                          child: Text(
                            restaurant.rating,
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 3),
                    Text(
                      restaurant.dishname,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "₹ ${restaurant.price} per person",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 3),
                    if (restaurant.isPromoted)
                      const Text(
                        "Promoted",
                        style: TextStyle(color: Colors.grey),
                      ),
                    if (double.parse(restaurant.time) < 60)
                      Text(
                        "closes in ${restaurant.time} minutes",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    const SizedBox(height: 3),
                    Text(
                      restaurant.comment,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
