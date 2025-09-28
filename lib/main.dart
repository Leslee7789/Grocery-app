import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart_model.dart';
import 'package:grocery_app/pages/intropage.dart';
import 'package:provider/provider.dart'; 

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intropage(),
      ),
    );
  }
}