import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('My Cart'),
    ),
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item'),
            );
          },),
          ),
      ],
    ),
    );
  }
}