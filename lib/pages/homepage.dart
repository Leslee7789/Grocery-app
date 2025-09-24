import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image.asset('lib/images/avocado.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('We deliver groceries at your doorstep' ,textAlign: TextAlign.center,
            style:
             TextStyle(
              fontSize: 40,fontWeight: FontWeight.bold,
            ),),
          ),
        ],
      ),
    );
  }
}