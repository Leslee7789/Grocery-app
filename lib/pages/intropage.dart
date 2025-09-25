import 'package:flutter/material.dart';
import 'package:grocery_app/pages/homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80,right: 80,bottom: 80,top: 120),
            child: Image.asset('lib/images/avocado.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('We deliver groceries at your doorstep' ,textAlign: TextAlign.center,
            style:
             TextStyle(
              fontSize: 40,fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Text('Fresh items everyday'),
          Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),),),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(18),
              ),
              padding: EdgeInsets.all(18),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}