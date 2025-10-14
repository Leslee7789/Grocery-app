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

  // Getter for shop items
  List get shopItems => _items;

  // List of cart items
  List cartItems = []; 
  List get getCartItems => cartItems;

  // Add item to cart
  void addItemToCart(int index) {
    cartItems.add(shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
