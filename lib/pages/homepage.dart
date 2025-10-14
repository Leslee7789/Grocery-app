import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart_model.dart';
import 'package:grocery_app/pages/cart_page.dart';
import 'package:grocery_app/pages/grocery_item_tile.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CartPage();
        },)),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('Good morning'),
            ),
SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('Lets order fresh items for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:24.0 ),
              child: Divider(),
            ),
            SizedBox(height: 24,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Fresh items'),
            ),
            Expanded(child: Consumer<CartModel>(builder: (context, value, child){
              return GridView.builder(
                itemCount: value.shopItems.length,
                
                padding: EdgeInsets.all(12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.3,
                ),
                itemBuilder: (context, index){
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                    onPressed: () {
                      Provider.of <CartModel>(context, listen: false).addItemToCart(index);
                    },
                  );
                });
            }))
          ],
        ),
      ),
    );
  }
}