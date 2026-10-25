import 'package:flutter/material.dart';

class Lab05 extends StatelessWidget {
  const Lab05({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            'Android ATC Pizza Place',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.orange,
              elevation: 5,
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/pizza_1.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      'Vegetable Pizza',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/pizza_2.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      'Cheese Pizza',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/fries.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      'Box of Fries',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const Lab05());
}
