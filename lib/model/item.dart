import 'package:flutter/cupertino.dart';

class Item {
  final String image;

  // final Color color;
  final String name;
  final String descriptionDrink;
  final num price;

  Item(
      {required this.image,
      // required this.color,
      required this.name,
      required this.descriptionDrink,
      required this.price});
}
