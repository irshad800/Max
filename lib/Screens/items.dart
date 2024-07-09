import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String searchQuery;
  final Function(Map<String, String>) onToggleFavorite;

  Item({Key? key, required this.searchQuery, required this.onToggleFavorite})
      : super(key: key);

  @override
  State<Item> createState() => _FoodState();
}

class _FoodState extends State<Item> {
  final List<Map<String, String>> items = [
    {
      "image": "assets/images/img-removebg-preview.png",
      "name": "Avocado Salad",
      "time": "20",
      "rating": "4.5",
      "price": "120",
    },
    {
      "image": "assets/images/img_3-removebg-preview.png",
      "name": "Burger",
      "time": "30",
      "rating": "5.0",
      "price": "150",
    },
    {
      "image": "assets/images/por-removebg-preview.png",
      "name": "Poratta",
      "time": "20",
      "rating": "4.5",
      "price": "12",
    },
    {
      "image": "assets/images/mandhi-removebg-preview.png",
      "name": "Kuzhi Mandhi",
      "time": "25",
      "rating": "4.5",
      "price": "160",
    },
    {
      "image": "assets/images/img-removebg-preview.png",
      "name": "Avocado Salad",
      "time": "20",
      "rating": "4.5",
      "price": "120",
    },
    {
      "image": "assets/images/img-removebg-preview.png",
      "name": "Avocado Salad",
      "time": "20",
      "rating": "4.5",
      "price": "120",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
          childAspectRatio: 0.82,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {},
      ),
    );
  }
}
