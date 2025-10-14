import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('My Cart'),
    ),
    body:Consumer<CartModel>(builder:(context,value,child){
 return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount:value.cartItems.length ,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                 color: Colors.grey[200], 
                ),
                child: ListTile(
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false).removeItemFromCart(index);
                    },
                  ),
                  title: Text(value.cartItems[index][0]),
                ),
              ),
            );
          },),
          ),
      ],
    );
    }
    ),
    );
  }
}