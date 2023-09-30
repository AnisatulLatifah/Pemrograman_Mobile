import 'package:flutter/material.dart';

class Item {
  String name;
  int price;
  String description;
  AssetImage image;

  Item(
      {required this.name,
      required this.price,
      required this.description,
      required this.image});
}
