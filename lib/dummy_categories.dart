import 'package:flutter/material.dart';
import 'package:flutter_app/models/category.dart';

Category getCategory(catId, catTitle, catColor) {
  return Category(id: catId, title: catTitle, color: catColor);
}

Category cat1 = getCategory('c1', 'Italian', Colors.purple);
Category cat2 = getCategory('c2', 'Quick & Easy', Colors.red);
Category cat3 = getCategory('c3', 'Hamburgers', Colors.orange);
Category cat4 = getCategory('c4', 'German', Colors.amber);
Category cat5 = getCategory('c5', 'Light & Lovely', Colors.blue);
Category cat6 = getCategory('c6', 'Exotic', Colors.green);
Category cat7 = getCategory('c7', 'Breakfast', Colors.lightBlue);
Category cat8 = getCategory('c8', 'Asian', Colors.lightGreen);
Category cat9 = getCategory('c9', 'French', Colors.pink);
Category cat10 = getCategory('c10', 'Summer', Colors.teal);

List<Category> DUMMY_CATEGORIES = [
  cat1,
  cat2,
  cat3,
  cat4,
  cat5,
  cat6,
  cat7,
  cat8,
  cat9,
  cat10
];
