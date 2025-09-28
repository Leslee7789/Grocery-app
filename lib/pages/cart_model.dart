import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // Shop items
  final List _items = [
    ['Avocado', '4.00', 'lib/images/avocado.jpg', Colors.greenAccent],
    ['Banana', '2.00', 'lib/images/banana.jpg', Colors.yellow],
    ['Fruits', '3.50', 'lib/images/fruits.jpeg', Colors.purpleAccent],
    ['Chicken', '5.00', 'lib/images/chicken.jpg', Colors.orangeAccent],
    ['Pear', '3.00', 'lib/images/pear.jpg', Colors.deepOrangeAccent],
    ['Water', '4.50', 'lib/images/water.jpg', Colors.redAccent],
  ];

  // Getter
  List get shopItems => _items;

  // You can add cart-related methods later, e.g.:
  // void addItem(int index) { ... notifyListeners(); }
}
