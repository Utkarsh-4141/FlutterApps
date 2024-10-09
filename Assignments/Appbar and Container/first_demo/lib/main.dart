import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AppBar Demo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 20 
            ),
            Icon(Icons.shopping_cart),
          ],
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
