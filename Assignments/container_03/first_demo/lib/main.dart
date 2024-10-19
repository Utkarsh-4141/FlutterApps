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
            "Container Demo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            padding: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
            ),
            child: Image.network("https://c8.alamy.com/comp/2HCTAGF/turku-finland-december-14-2021-full-view-of-11-aspect-ratio-of-fontana-building-in-downtown-turku-known-as-a-restaurant-cafe-bistro-and-bar-2HCTAGF.jpg"),
          ),
        ),
      ),
    );
  }
}
