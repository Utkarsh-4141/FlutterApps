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
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 5,
                  color: Colors.red,
                ),
              ),
              color: Colors.amber,
            ),
            padding: const EdgeInsets.all(15),
            child: const Text(
              "Hello",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
